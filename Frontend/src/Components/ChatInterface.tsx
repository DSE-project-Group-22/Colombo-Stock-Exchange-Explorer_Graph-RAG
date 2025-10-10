import React, { useState, useRef, useEffect, useMemo } from "react";
import axios from "axios";

let EventSourcePolyfill: any;
try {
  EventSourcePolyfill = require("event-source-polyfill").EventSourcePolyfill;
} catch (_) {}

const ChatInterface = () => {
  const [messages, setMessages] = useState<any[]>([
    {
      sender: "assistant",
      text:
        "Hello! I'm your Colombo Stock Exchange assistant. I can help you analyze market trends, explain stock movements, provide company insights, and answer questions about CSE trading. How can I assist you today?",
    },
  ]);
  const [input, setInput] = useState("");
  const [isTyping, setIsTyping] = useState(false);
  const [activeStream, setActiveStream] = useState<any>(null);
  const [agentActivity, setAgentActivity] = useState("Idle");
  const messagesEndRef = useRef<HTMLDivElement | null>(null);

  const hasStreamedRef = useRef(false);

  // ---- Config ----
  const API_BASE = "http://localhost:8080";
  const CHAT_REST = `${API_BASE}/api/chat`;
  const token = useMemo(() => localStorage.getItem("token") || "", []);

  // ✅ Thread ID — created once per page load and persists until refresh
  const [threadId] = useState(() => {
    return crypto.randomUUID?.() || Math.random().toString(36).substring(2, 10);
  });

  const scrollToBottom = () => {
    messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
  };
  useEffect(() => {
    scrollToBottom();
  }, [messages]);

  useEffect(() => {
    return () => {
      try {
        activeStream?.close?.();
      } catch {}
    };
  }, []);

  const formatActivity = (data: any = {}) => {
    const type = (data.step_type || data.type || "").toLowerCase();
    const name = data.name || data.tool || data.provider || "";
    const { current, total, percent } = data.progress || {};
    const prog =
      typeof percent === "number"
        ? ` (${Math.round(percent)}%)`
        : typeof current === "number" && typeof total === "number"
        ? ` (${current}/${total})`
        : "";

    switch (type) {
      case "token":
      case "partial":
      case "generate":
      case "llm_generate":
      case "thinking":
        return "Drafting answer…" + prog;
      case "retrieval":
      case "vector_search":
      case "kb_search":
        return "Searching knowledge base…" + prog;
      case "web_search":
      case "http":
      case "browser_search":
        return "Searching the web…" + prog;
      case "tool_call":
      case "tool":
      case "function_call":
        return `Calling tool: ${name || "external service"}…` + prog;
      case "tool_result":
      case "function_result":
        return `Processed results from ${name || "tool"}.`;
      case "rag_grounding":
        return "Grounding answer with retrieved sources…" + prog;
      case "db_query":
      case "query":
      case "graphql":
        return `Querying service${name ? `: ${name}` : ""}…` + prog;
      case "summarize":
        return "Summarizing results…" + prog;
      case "ranking":
        return "Ranking candidate answers…" + prog;
      default:
        return data.status
          ? `${data.status}…`
          : name
          ? `Working with ${name}…`
          : "Working…";
    }
  };

  const upsertStreamingAssistant = (delta?: string) => {
    const t = (delta ?? "").replace(/\s+/g, " ").trim();
    if (!t) return;

    hasStreamedRef.current = true;

    setMessages((prev) => {
      const lastIdx = [...prev]
        .map((m, i) => ({ i, m }))
        .filter(({ m }) => m.sender === "assistant" && m._streaming === true)
        .map(({ i }) => i)
        .pop();

      if (lastIdx == null) {
        return [...prev, { sender: "assistant", text: t, _streaming: true }];
      }
      const next = [...prev];
      next[lastIdx] = {
        ...next[lastIdx],
        text:
          (next[lastIdx].text || "") +
          (next[lastIdx].text ? " " : "") +
          t,
      };
      return next;
    });
  };

  const finalizeStreamingAssistant = (finalText?: string) => {
    const t = (finalText ?? "").toString().trim();

    setMessages((prev) => {
      const lastIdx = [...prev]
        .map((m, i) => ({ i, m }))
        .filter(({ m }) => m.sender === "assistant" && m._streaming === true)
        .map(({ i }) => i)
        .pop();

      if (lastIdx == null && !t) {
        return prev;
      }

      if (lastIdx != null) {
        const next = [...prev];
        const existing = (next[lastIdx].text || "").toString();
        const merged = t
          ? existing
            ? existing + (existing.endsWith(" ") ? "" : " ") + t
            : t
          : existing;
        next[lastIdx] = { ...next[lastIdx], _streaming: false, text: merged };
        return next;
      }

      return [...prev, { sender: "assistant", text: t }];
    });

    hasStreamedRef.current = false;
  };

  const closeActiveStream = () => {
    try {
      activeStream?.close?.();
    } catch {}
    setActiveStream(null);
    hasStreamedRef.current = false;
  };

  const startPollingFallback = async (pollUrl: string) => {
    setAgentActivity("Waiting for response…");
    const interval = setInterval(async () => {
      try {
        const res = await axios.get(`${API_BASE}${pollUrl}`, {
          headers: { Authorization: `Bearer ${token}` },
        });
        const { status, response } = res.data;
        if (status === "completed") {
          clearInterval(interval);
          finalizeStreamingAssistant(response || "");
          setIsTyping(false);
          setAgentActivity("Idle");
        } else if (status === "error") {
          clearInterval(interval);
          finalizeStreamingAssistant(
            "Sorry, there was an error processing your request."
          );
          setIsTyping(false);
          setAgentActivity("Idle");
        }
      } catch {
        clearInterval(interval);
        finalizeStreamingAssistant(
          "Sorry, there was an error processing your request."
        );
        setIsTyping(false);
        setAgentActivity("Idle");
      }
    }, 2000);
  };

  const pickText = (obj: any) =>
    ["delta", "partial", "text", "content", "message", "output", "result", "response"]
      .map((k) => obj?.[k])
      .find((v) => typeof v === "string" && v.trim().length > 0);

  const openSSE = ({
    correlation_id,
    poll_url,
  }: {
    correlation_id: string;
    poll_url: string;
  }) => {
    const url = `${CHAT_REST}/stream/${correlation_id}`;

    hasStreamedRef.current = false;

    let es: EventSource;
    try {
      if (EventSourcePolyfill) {
        es = new EventSourcePolyfill(url, {
          headers: { Authorization: `Bearer ${token}` },
          heartbeatTimeout: 60_000,
        }) as unknown as EventSource;
      } else {
        es = new EventSource(url);
      }

      setActiveStream(es);
      setAgentActivity("Connecting…");

      es.addEventListener("step", (ev: MessageEvent) => {
        try {
          const data = JSON.parse(ev.data);
          const activity = formatActivity(data);
          setAgentActivity(activity);

          const t = pickText(data);
          if (t) upsertStreamingAssistant(t);
        } catch {
          setAgentActivity("Working…");
        }
      });

      es.addEventListener("response", (ev: MessageEvent) => {
        try {
          const data = JSON.parse(ev.data);
          const finalText =
            data?.response ??
            data?.text ??
            data?.answer ??
            data?.content ??
            data?.message ??
            data?.output ??
            data?.result ??
            "";
          finalizeStreamingAssistant(finalText);
        } catch {
          finalizeStreamingAssistant("");
        } finally {
          setAgentActivity("Finalizing…");
        }
      });

      es.addEventListener("complete", () => {
        finalizeStreamingAssistant();
        es.close();
        setActiveStream(null);
        setIsTyping(false);
        setAgentActivity("Idle");
      });

      es.addEventListener("timeout", () => {
        finalizeStreamingAssistant();
        es.close();
        setActiveStream(null);
        setAgentActivity("Timed out — switching to polling…");
        startPollingFallback(poll_url);
      });

      es.addEventListener("error", () => {
        finalizeStreamingAssistant();
        es.close();
        setActiveStream(null);
        setAgentActivity("Stream error — switching to polling…");
        startPollingFallback(poll_url);
      });
    } catch {
      setAgentActivity("Stream failed — switching to polling…");
      startPollingFallback(poll_url);
    }
  };

  const handleSend = async () => {
    if (!input.trim()) return;

    setMessages((prev) => [...prev, { sender: "user", text: input }]);
    setIsTyping(true);
    setAgentActivity("Submitting your query…");
    closeActiveStream();

    try {
      const res = await axios.post(
        `${CHAT_REST}`,
        { message: input, thread_id: threadId },
        {
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
        }
      );

      const { correlation_id, poll_url } = res.data || {};
      if (!correlation_id || !poll_url) {
        throw new Error("Missing correlation_id or poll_url in response");
      }
      openSSE({ correlation_id, poll_url });
    } catch {
      setMessages((prev) => [
        ...prev,
        {
          sender: "assistant",
          text: "Sorry, there was an error processing your request.",
        },
      ]);
      setIsTyping(false);
      setAgentActivity("Idle");
    }

    setInput("");
  };

  return (
    <section id="chat-assistant" className="w-full bg-slate-900 py-16 border-y-4 border-yellow-500">
      <div className="max-w-6xl mx-auto px-6">
        {/* Section Header */}
        <div className="text-center mb-12">
          <h2 className="text-4xl font-bold text-white mb-4">
            AI Market <span className="text-yellow-500">Assistant</span>
          </h2>
          <p className="text-xl text-gray-300 max-w-3xl mx-auto">
            Get instant insights about CSE stocks, market trends, and company analysis powered by AI
          </p>
          <p className="text-xs text-gray-400 mt-2">
            Thread ID: <span className="font-mono text-yellow-400">{threadId}</span>
          </p>
        </div>

        {/* Chat Container */}
        <div className="bg-white rounded-2xl shadow-2xl overflow-hidden border-2 border-yellow-500">
          {/* Chat Header */}
          <div className="bg-gradient-to-r from-slate-800 to-slate-900 text-white px-6 py-4 border-b border-yellow-500">
            <div className="flex items-center space-x-3">
              <div className="bg-yellow-500 p-2 rounded-lg">
                <svg className="w-5 h-5 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M20 2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h4l4 4 4-4h4c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2z" />
                </svg>
              </div>
              <div className="flex-1">
                <h3 className="text-lg font-bold">CSE Market Assistant</h3>
                <p className="text-sm text-gray-300">Powered by AI • Real-time insights</p>
              </div>
              <div className="flex items-center gap-2">
                <div className={`w-2 h-2 rounded-full ${agentActivity !== "Idle" ? "bg-amber-400 animate-pulse" : "bg-green-500"}`} />
                <span className="text-xs text-gray-300">{agentActivity}</span>
              </div>
            </div>
          </div>

          {/* Messages Area */}
          <div className="h-[500px] overflow-y-auto bg-gradient-to-br from-slate-50 to-gray-100 p-6">
            <div className="space-y-6">
              {messages.map((msg, i) => (
                <div key={i} className={`flex ${msg.sender === "user" ? "justify-end" : "justify-start"}`}>
                  <div className="flex space-x-3 max-w-[80%]">
                    {msg.sender === "assistant" && (
                      <div className="w-8 h-8 bg-yellow-500 rounded-full flex items-center justify-center shadow-md">
                        <svg className="w-5 h-5 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                          <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2z" />
                        </svg>
                      </div>
                    )}

                    <div className={`px-5 py-3 rounded-2xl shadow-md ${msg.sender === "user" ? "bg-slate-900 text-white rounded-br-none" : "bg-white text-gray-900 rounded-bl-none border border-gray-200"}`}>
                      <p className="text-sm leading-relaxed whitespace-pre-wrap">{msg.text}</p>
                    </div>

                    {msg.sender === "user" && (
                      <div className="w-8 h-8 bg-gray-600 rounded-full flex items-center justify-center shadow-md">
                        <svg className="w-5 h-5 text-gray-300" fill="currentColor" viewBox="0 0 24 24">
                          <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z" />
                        </svg>
                      </div>
                    )}
                  </div>
                </div>
              ))}

              {isTyping && (
                <div className="flex justify-start">
                  <div className="flex space-x-3 max-w-[80%]">
                    <div className="w-8 h-8 bg-yellow-500 rounded-full flex items-center justify-center shadow-md">
                      <svg className="w-5 h-5 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2z" />
                      </svg>
                    </div>
                    <div className="bg-white border border-gray-200 px-5 py-3 rounded-2xl rounded-bl-none shadow-md">
                      <div className="flex space-x-1 items-center text-gray-600 text-sm">
                        <div className="w-2 h-2 bg-gray-400 rounded-full animate-pulse" />
                        <span>Assistant is typing…</span>
                      </div>
                    </div>
                  </div>
                </div>
              )}
              <div ref={messagesEndRef} />
            </div>
          </div>

          {/* Input Area */}
          <div className="bg-gray-50 border-t-2 border-gray-200 p-6">
            {messages.length === 1 && (
              <div className="mb-4">
                <p className="text-sm font-medium text-gray-600 mb-3">Try asking:</p>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-2">
                  {[
                    "What are the top performing stocks today?",
                    "Analyze the banking sector performance",
                    "Show me recent market trends",
                    "Tell me about John Keells Holdings",
                  ].map((prompt, idx) => (
                    <button
                      key={idx}
                      onClick={() => setInput(prompt)}
                      className="text-left px-4 py-2 bg-white border border-gray-300 text-gray-700 rounded-lg text-sm hover:bg-gray-100 hover:border-gray-400 transition-colors"
                    >
                      {prompt}
                    </button>
                  ))}
                </div>
              </div>
            )}

            <div className="flex space-x-3">
              <div className="flex-1 relative">
                <textarea
                  className="w-full px-4 py-3 border-2 border-gray-300 rounded-xl resize-none focus:outline-none focus:ring-2 focus:ring-yellow-500 bg-white text-sm"
                  placeholder="Ask me about CSE stocks, market analysis, company insights..."
                  value={input}
                  onChange={(e) => setInput(e.target.value)}
                  onKeyDown={(e) => {
                    if (e.key === "Enter" && !e.shiftKey) {
                      e.preventDefault();
                      handleSend();
                    }
                  }}
                  rows={2}
                />
              </div>
              <button
                className="px-6 py-3 bg-yellow-500 hover:bg-yellow-600 text-slate-900 rounded-xl font-bold disabled:opacity-50 transition-all duration-200 transform hover:scale-105 shadow-lg flex items-center space-x-2"
                onClick={handleSend}
                disabled={!input.trim() || isTyping}
              >
                <span>Send</span>
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8" />
                </svg>
              </button>
            </div>
            <p className="text-xs text-gray-500 mt-2 text-center">Press Enter to send • Shift+Enter for new line</p>
          </div>
        </div>

        {/* Feature Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mt-12">
          <div className="bg-slate-800 rounded-xl p-6 border border-yellow-500 border-opacity-30">
            <div className="bg-yellow-500 w-12 h-12 rounded-lg flex items-center justify-center mb-4">
              <svg className="w-6 h-6 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                <path d="M16 6l2.29 2.29-4.88 4.88-4-4L2 16.59 3.41 18l6-6 4 4 6.3-6.29L22 12V6z" />
              </svg>
            </div>
            <h4 className="text-white font-bold text-lg mb-2">Real-time Analysis</h4>
            <p className="text-gray-400 text-sm">Get instant insights on stock movements and market trends</p>
          </div>

          <div className="bg-slate-800 rounded-xl p-6 border border-yellow-500 border-opacity-30">
            <div className="bg-yellow-500 w-12 h-12 rounded-lg flex items-center justify-center mb-4">
              <svg className="w-6 h-6 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                <path d="M19 3H5c-1.1 0-2 .9-2 2v14c1.1 0 2 .9 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-.9-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z" />
              </svg>
            </div>
            <h4 className="text-white font-bold text-lg mb-2">Company Insights</h4>
            <p className="text-gray-400 text-sm">Detailed information about listed companies and their performance</p>
          </div>

          <div className="bg-slate-800 rounded-xl p-6 border border-yellow-500 border-opacity-30">
            <div className="bg-yellow-500 w-12 h-12 rounded-lg flex items-center justify-center mb-4">
              <svg className="w-6 h-6 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-6h2v6zm0-8h-2V7h2v2z" />
              </svg>
            </div>
            <h4 className="text-white font-bold text-lg mb-2">Smart Recommendations</h4>
            <p className="text-gray-400 text-sm">AI-powered suggestions based on market conditions and trends</p>
          </div>
        </div>
      </div>
    </section>
  );
};

export default ChatInterface;
