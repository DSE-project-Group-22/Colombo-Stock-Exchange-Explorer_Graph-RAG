import React, { useEffect, useRef, useState, useCallback } from "react";
import { Network } from "vis-network/standalone";
import { DataSet } from "vis-data";

// ─────────────────────────────────────────────────────────────
// API (FastAPI) — NL → Cypher
const API_BASE = "http://localhost:8080";
const API_VISUALIZE_BASE = `${API_BASE}/api/visualize`;

async function createVisualization(message: string, threadId?: string) {
  const res = await fetch(`${API_VISUALIZE_BASE}/`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    credentials: "include",
    body: JSON.stringify({ message, thread_id: threadId }),
  });
  if (!res.ok) {
    const text = await res.text().catch(() => "");
    throw new Error(
      `Create failed: ${res.status} ${res.statusText} at ${res.url}\n${text}`
    );
  }
  return (await res.json()) as { correlation_id: string; poll_url: string };
}

async function pollVisualization(correlationId: string, signal?: AbortSignal) {
  const res = await fetch(`${API_VISUALIZE_BASE}/poll/${correlationId}`, {
    method: "GET",
    credentials: "include",
    signal,
  });
  if (!res.ok) {
    const text = await res.text().catch(() => "");
    throw new Error(
      `Poll failed: ${res.status} ${res.statusText} at ${res.url}\n${text}`
    );
  }
  return (await res.json()) as {
    cypher: string;
    success: boolean;
    error: string | null;
  };
}

const NEO4J_HTTP_URL = String(import.meta.env.VITE_NEO4J_HTTP_URL ?? "");
const NEO4J_USER = String(import.meta.env.VITE_NEO4J_USER ?? "");
const NEO4J_PASSWORD = String(import.meta.env.VITE_NEO4J_PASSWORD ?? "");

type Neo4jHTTPGraphNode = {
  id: string;
  labels: string[];
  properties: Record<string, unknown>;
};

type Neo4jHTTPGraphRel = {
  id: string;
  type: string;
  startNode: string;
  endNode: string;
  properties: Record<string, unknown>;
};

type Neo4jHTTPGraphData = {
  graph: {
    nodes: Neo4jHTTPGraphNode[];
    relationships: Neo4jHTTPGraphRel[];
  };
};

// Node palette keyed by LOWER-CASE label names
const colorByGroup: Record<
  string,
  { background: string; border: string; highlight: string }
> = {
  auditor: { background: "#0ea5e9", border: "#0369a1", highlight: "#38bdf8" },
  company: { background: "#1e40af", border: "#1e3a8a", highlight: "#3b82f6" },
  metric:  { background: "#ef4444", border: "#991b1b", highlight: "#f87171" },
  person:  { background: "#059669", border: "#064e3b", highlight: "#10b981" },
  product: { background: "#9333ea", border: "#6b21a8", highlight: "#a855f7" },
  sector:  { background: "#d97706", border: "#92400e", highlight: "#f59e0b" },
};

// Consistent sizes per topic (all nodes under the same label share the same size)
const sizeByGroup: Record<string, number> = {
  auditor: 18,
  company: 16,
  metric: 14,
  person: 12,
  product: 12,
  sector: 12,
};

type Status = "idle" | "submitting" | "polling" | "rendering" | "done" | "error";

const GraphVisualizer: React.FC = () => {
  const containerRef = useRef<HTMLDivElement | null>(null);
  const networkRef = useRef<Network | null>(null);
  const pollAbortRef = useRef<AbortController | null>(null);

  const [nlQuery, setNlQuery] = useState<string>("");
  const [compiledCypher, setCompiledCypher] = useState<string | null>(null);
  const [nodeCount, setNodeCount] = useState<number>(0);
  const [edgeCount, setEdgeCount] = useState<number>(0);
  const [status, setStatus] = useState<Status>("idle");
  const [error, setError] = useState<string | null>(null);

  const fetchCypherGraph = useCallback(
    async (cypherText: string) => {
      // Guard against missing configuration early and provide a clear error
      if (!NEO4J_HTTP_URL) {
        throw new Error(
          "Neo4j HTTP URL is not configured. Set VITE_NEO4J_HTTP_URL in your Frontend/.env"
        );
      }
      if (!NEO4J_USER || !NEO4J_PASSWORD) {
        throw new Error(
          "Neo4j credentials are not configured. Set VITE_NEO4J_USER and VITE_NEO4J_PASSWORD in your Frontend/.env"
        );
      }

      const res = await fetch(NEO4J_HTTP_URL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: "Basic " + btoa(`${NEO4J_USER}:${NEO4J_PASSWORD}`),
        },
        body: JSON.stringify({
          statements: [
            {
              statement: cypherText,
              resultDataContents: ["graph"],
            },
          ],
        }),
      });

      if (!res.ok) {
        const text = await res.text().catch(() => "");
        throw new Error(`HTTP ${res.status} ${res.statusText}\n${text}`);
      }

      const data = await res.json();
      const resultData: Neo4jHTTPGraphData[] = data?.results?.[0]?.data ?? [];
      return resultData;
    },
    []
  );

  const buildVisGraph = useCallback((rows: Neo4jHTTPGraphData[]) => {
    const nodeMap = new Map<string, any>();
    const edgeMap = new Map<string, any>();

    rows.forEach((row) => {
      const g = row.graph;
      if (!g) return;

      g.nodes.forEach((n) => {
        if (!nodeMap.has(n.id)) {
          const rawLabel = (n.labels?.[0] ?? "Node").toString();
          const key = rawLabel.toLowerCase();
          const display =
            (n.properties && (n.properties as any).name) ||
            (n.properties && (n.properties as any).title) ||
            rawLabel;

          const colorConfig =
            colorByGroup[key] || {
              background: "#6b7280",
              border: "#374151",
              highlight: "#9ca3af",
            };

          const shapeByKey: Record<
            string,
            "box" | "circle" | "diamond" | "ellipse" | "dot" | "database" | "text"
          > = {
            auditor: "diamond",
            company: "box",
            metric: "database",
            person: "circle",
            product: "ellipse",
            sector: "dot",
          };
          const nodeShape = shapeByKey[key] || "dot";

          nodeMap.set(n.id, {
            id: n.id,
            label: String(display),
            group: rawLabel,
            title: JSON.stringify(n.properties ?? {}, null, 2),
            color: {
              background: colorConfig.background,
              border: colorConfig.border,
              highlight: {
                background: colorConfig.highlight,
                border: colorConfig.border,
              },
            },
            shape: nodeShape,
            font: {
              color: "#ffffff",
              size: 11,
              face: "system-ui",
            },
            // SAME SIZE for every node under the same topic/label
            size: sizeByGroup[key] ?? 12,
            borderWidth: 1,
          });
        }
      });

      g.relationships.forEach((r) => {
        if (!edgeMap.has(r.id)) {
          edgeMap.set(r.id, {
            id: r.id,
            from: r.startNode,
            to: r.endNode,
            label: "",
            arrows: "to",
            title: r.type + "\n" + JSON.stringify(r.properties ?? {}, null, 2),
            color: {
              color: "#94a3b8",
              highlight: "#eab308",
              hover: "#eab308",
            },
            width: 1,
          });
        }
      });
    });

    return {
      nodes: Array.from(nodeMap.values()),
      edges: Array.from(edgeMap.values()),
    };
  }, []);

  const renderGraph = useCallback(
    async (cypherText: string) => {
      if (!containerRef.current) return;
      setStatus("rendering");
      setError(null);

      try {
        const graphRows = await fetchCypherGraph(cypherText);
        const { nodes, edges } = buildVisGraph(graphRows);

        setNodeCount(nodes.length);
        setEdgeCount(edges.length);

        if (networkRef.current) {
          networkRef.current.destroy();
          networkRef.current = null;
        }

        const data = {
          nodes: new DataSet(nodes),
          edges: new DataSet(edges),
        };

        const options = {
          nodes: {
            borderWidth: 2,
            shadow: false,
          },
          edges: {
            shadow: false,
            smooth: false, // straight edges for speed
          },
          physics: {
            enabled: true,
            solver: "forceAtlas2Based",
            forceAtlas2Based: {
              gravitationalConstant: -50,
              centralGravity: 0.01,
              springLength: 100,
              springConstant: 0.08,
              damping: 0.4,
              avoidOverlap: 0,
            },
            stabilization: {
              enabled: true,
              iterations: 40,      // modest iterations → quicker load
              updateInterval: 50,
            },
          },
          interaction: {
            hover: true,
            tooltipDelay: 150,
            zoomView: true,
            dragView: true,
            hideEdgesOnDrag: true,
            hideEdgesOnZoom: false,
          },
          layout: {
            improvedLayout: false,
            randomSeed: 42,
          },
        } as const;

        networkRef.current = new Network(containerRef.current, data, options);

        setStatus("done");

        // Stop physics soon after start to avoid long-running animation
        setTimeout(() => {
          if (networkRef.current) networkRef.current.stopSimulation();
        }, 1200);
      } catch (e: any) {
        const msg = String(e?.message ?? e);
        setError(msg);
        setStatus("error");
      }
    },
    [buildVisGraph, fetchCypherGraph]
  );

  const onRun = useCallback(async () => {
    setError(null);
    setCompiledCypher(null);
    setStatus("submitting");

    if (pollAbortRef.current) {
      pollAbortRef.current.abort();
      pollAbortRef.current = null;
    }

    try {
      const { correlation_id } = await createVisualization(
        nlQuery.trim() || "Show a small sample of the graph"
      );
      setStatus("polling");

      const controller = new AbortController();
      pollAbortRef.current = controller;

      while (true) {
        if (controller.signal.aborted) throw new Error("Polling aborted");

        let data: Awaited<ReturnType<typeof pollVisualization>>;
        try {
          data = await pollVisualization(correlation_id, controller.signal);
        } catch {
          await new Promise((r) => setTimeout(r, 900));
          continue;
        }

        if (data.success && data.cypher) {
          setCompiledCypher(data.cypher);
          await renderGraph(data.cypher);
          break;
        }

        if (data.error && data.error !== "Still processing") {
          throw new Error(data.error);
        }

        await new Promise((r) => setTimeout(r, 900));
      }
    } catch (err: any) {
      const msg = String(err?.message ?? err);
      setError(msg);
      setStatus("error");
    } finally {
      pollAbortRef.current = null;
    }
  }, [nlQuery, renderGraph]);

  useEffect(() => {
    return () => {
      if (networkRef.current) {
        networkRef.current.destroy();
        networkRef.current = null;
      }
      if (pollAbortRef.current) {
        pollAbortRef.current.abort();
        pollAbortRef.current = null;
      }
    };
  }, []);

  const isLoading =
    status === "submitting" || status === "polling" || status === "rendering";

  const activityText =
    status === "idle"
      ? "Ready"
      : status === "submitting"
      ? "Submitting…"
      : status === "polling"
      ? "Processing…"
      : status === "rendering"
      ? "Rendering…"
      : status === "done"
      ? "Complete"
      : "Error";

  const chipColor =
    status === "error"
      ? "bg-red-500"
      : status === "idle" || status === "done"
      ? "bg-green-500"
      : "bg-amber-400";

  const zoomBy = (factor: number) => {
    const net = networkRef.current;
    if (!net) return;
    const scale = net.getScale();
    const position = net.getViewPosition();
    net.moveTo({
      position,
      scale: Math.max(0.05, Math.min(5, scale * factor)),
      animation: { duration: 200, easingFunction: "easeInOutQuad" },
    });
  };

  // THEME: dark indigo section background + light text
  return (
    <section
      id="network-explorer"
      className="w-full bg-gradient-to-b from-slate-900 to-slate-800 py-16 border-t-4 border-yellow-500"
    >
      <div className="max-w-6xl mx-auto px-6">
        {/* Section Header (light text to match dark background) */}
        <div className="text-center mb-12">
          <h2 className="text-5xl font-bold text-slate-50 mb-6">
            Discover Hidden <span className="text-yellow-400">Connections</span>
          </h2>
          <p className="text-lg md:text-xl text-slate-200 max-w-3xl mx-auto leading-relaxed">
            Uncover relationships between companies, directors, and sectors. Ask questions
            naturally and watch corporate networks emerge in real-time.
          </p>
        </div>

        {/* Main Card */}
          <div className="bg-white rounded-3xl shadow-2xl overflow-hidden border border-slate-200 max-w-6xl">
          {/* Search Bar Section */}
          <div className="bg-slate-800 p-8 border-b-2 border-yellow-500">
            <div className="space-y-6">
              <div className="flex flex-col lg:flex-row gap-4">
                <div className="flex-1 relative">
                  <div className="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                    <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                    </svg>
                  </div>
                  <input
                    value={nlQuery}
                    onChange={(e) => setNlQuery(e.target.value)}
                    onKeyDown={(e) => {
                      if (e.key === "Enter" && !isLoading) onRun();
                    }}
                    placeholder="Ask about connections... (e.g., Which directors sit on multiple bank boards?)"
                    className="w-full pl-12 pr-4 py-4 border-2 border-gray-600 rounded-2xl focus:outline-none focus:ring-2 focus:ring-yellow-500 focus:border-yellow-500 bg-slate-700 text-white placeholder-gray-400 text-base shadow-sm"
                  />
                </div>

                <button
                  onClick={onRun}
                  disabled={!nlQuery.trim() || isLoading}
                  className="px-8 py-4 bg-yellow-500 hover:bg-yellow-600 text-slate-900 rounded-2xl font-bold disabled:opacity-50 disabled:cursor-not-allowed transition-all duration-200 shadow-lg hover:shadow-xl flex items-center justify-center space-x-2"
                >
                  <span>
                    {status === "submitting"
                      ? "Submitting…"
                      : status === "polling"
                      ? "Processing…"
                      : status === "rendering"
                      ? "Rendering…"
                      : "Explore"}
                  </span>
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 7l5 5m0 0l-5 5m5-5H6" />
                  </svg>
                </button>
              </div>

              {/* Status Indicator */}
              <div className="flex items-center justify-between">
                <div className="flex items-center space-x-2 text-sm">
                  <div className={`w-2 h-2 rounded-full ${chipColor} ${status !== "idle" && status !== "done" ? "animate-pulse" : ""}`} />
                  <span className="text-indigo-200 font-medium">{activityText}</span>
                </div>

                {status === "done" && nodeCount > 0 && (
                  <div className="flex items-center space-x-4">
                    <div className="flex items-center space-x-2 text-sm">
                      <span className="w-2 h-2 bg-blue-400 rounded-full" />
                      <span className="text-indigo-200 font-medium">{nodeCount} entities</span>
                    </div>
                    <div className="flex items-center space-x-2 text-sm">
                      <span className="w-2 h-2 bg-yellow-400 rounded-full" />
                      <span className="text-indigo-200 font-medium">{edgeCount} links</span>
                    </div>
                  </div>
                )}
              </div>

              {/* Quick Examples */}
              <div>
                <p className="text-sm font-semibold text-indigo-200 mb-3">Popular Queries:</p>
                <div className="grid grid-cols-1 lg:grid-cols-2 gap-3">
                    {[
                      "Which directors serve on multiple company boards?",
                      "Show me all companies in the banking sector",
                      "Find relationships between auditors and their clients",
                      "Find all people connected to telecommunications companies"
                    ].map((query, idx) => (
                      <button
                        key={idx}
                        onClick={() => setNlQuery(query)}
                        disabled={isLoading}
                        className="group text-left px-4 py-3 bg-slate-700 border-2 border-slate-600 text-gray-200 rounded-xl text-sm hover:border-yellow-500 hover:bg-slate-600 transition-all disabled:opacity-50 disabled:cursor-not-allowed shadow-sm hover:shadow-md"
                      >
                        <div className="flex items-start space-x-2">
                          <svg className="w-4 h-4 text-gray-400 group-hover:text-yellow-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                          </svg>
                          <span>{query}</span>
                        </div>
                      </button>
                    ))}
                </div>
              </div>
            </div>
          </div>

          {/* Error Display */}
          {error && (
            <div className="bg-red-50 border-b-4 border-red-500 p-6 m-6 rounded-xl">
              <div className="flex">
                <div className="flex-shrink-0">
                  <svg className="h-6 w-6 text-red-500" fill="currentColor" viewBox="0 0 20 20">
                    <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clipRule="evenodd" />
                  </svg>
                </div>
                <div className="ml-3">
                  <h3 className="text-base font-semibold text-red-800">Unable to Process Query</h3>
                  <div className="mt-2 text-sm text-red-700">{error}</div>
                </div>
              </div>
            </div>
          )}

          {/* Graph Visualization */}
          <div className="relative bg-white" style={{ height: "500px" }}>
            {isLoading && (
              <div className="absolute inset-0 bg-white/95 flex items-center justify-center z-10">
                <div className="text-center">
                  <div className="relative w-16 h-16 mx-auto mb-6">
                    <div className="absolute inset-0 border-4 border-yellow-500 border-t-transparent rounded-full animate-spin" />
                    <div className="absolute inset-2 border-4 border-slate-900 border-b-transparent rounded-full animate-spin" style={{ animationDirection: "reverse", animationDuration: "1.2s" }} />
                  </div>
                  <p className="text-slate-900 font-semibold text-lg mb-1">
                    {status === "submitting" && "Analyzing your question..."}
                    {status === "polling" && "Building the network..."}
                    {status === "rendering" && "Drawing connections..."}
                  </p>
                  <p className="text-gray-600 text-sm">
                    {status === "polling" && "Translating natural language to graph query"}
                    {status === "rendering" && "Mapping relationships and entities"}
                  </p>
                </div>
              </div>
            )}

            {/* Zoom Controls */}
            <div className="absolute right-6 top-6 z-10 flex flex-col gap-2">
              <button
                type="button"
                onClick={() => zoomBy(1.2)}
                className="w-12 h-12 rounded-xl bg-slate-900/90 backdrop-blur border-2 border-yellow-500 shadow-lg hover:bg-slate-900 hover:shadow-xl text-white text-2xl font-bold transition-all"
                title="Zoom in"
              >
                +
              </button>
              <button
                type="button"
                onClick={() => zoomBy(1 / 1.2)}
                className="w-12 h-12 rounded-xl bg-slate-900/90 backdrop-blur border-2 border-yellow-500 shadow-lg hover:bg-slate-900 hover:shadow-xl text-white text-2xl font-bold transition-all"
                title="Zoom out"
              >
                −
              </button>
            </div>

            <div
              ref={containerRef}
              className="w-full h-full bg-gradient-to-br from-gray-50 to-slate-100"
            />
          </div>

          {/* Bottom Info Panel */}
          {compiledCypher && (
            <div className="bg-slate-800 border-t-2 border-yellow-500 p-6">
              <details className="bg-slate-700 rounded-xl border-2 border-slate-600 shadow-sm">
                <summary className="cursor-pointer select-none px-5 py-4 font-semibold text-white hover:bg-slate-600 rounded-xl transition-colors flex items-center justify-between">
                  <span className="flex items-center space-x-2">
                    <svg className="w-5 h-5 text-yellow-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4" />
                    </svg>
                    <span>Technical Details</span>
                  </span>
                  <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
                  </svg>
                </summary>
                <div className="px-5 py-4 border-t-2 border-slate-600">
                  <div className="mb-4">
                    <h4 className="text-sm font-semibold text-gray-300 mb-2">Generated Cypher Query:</h4>
                    <pre className="text-xs font-mono text-gray-200 bg-slate-800 p-4 rounded-lg overflow-x-auto border border-slate-600">
                      {compiledCypher}
                    </pre>
                  </div>

                  <div className="flex flex-wrap gap-4 pt-3 border-t-2 border-slate-600">
                    <span className="text-sm font-semibold text-gray-300">Entity Types:</span>
                    {["auditor","company","metric","person","product","sector"].map((k) => {
                      const v = colorByGroup[k];
                      const label = k.charAt(0).toUpperCase() + k.slice(1);
                      return (
                        <div
                          key={k}
                          className="flex items-center space-x-2 bg-slate-800 px-3 py-1.5 rounded-lg border border-slate-600"
                        >
                          <span
                            className="w-3 h-3 rounded-sm border-2"
                            style={{ backgroundColor: v.background, borderColor: v.border }}
                          />
                          <span className="text-sm font-medium text-gray-200">{label}</span>
                        </div>
                      );
                    })}
                  </div>
                </div>
              </details>
            </div>
          )}
        </div>
      </div>
    </section>
  );
};

export default GraphVisualizer;
