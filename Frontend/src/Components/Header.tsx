import React, { useEffect, useState } from 'react';

const Header = () => {
  const [marketData, setMarketData] = useState<any | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchMarketStatus = async () => {
      try {
        // Call the API Gateway proxy to avoid CORS issues
        const response = await fetch("/api/marketStatus", {
          method: "POST",
          credentials: "include",
          headers: {
            "Accept": "application/json",
          }
        });

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }

        const data = await response.json();

        // Normalize different upstream shapes:
        // - { status: 'Regular Trading' }
        // - { marketStatus: 'Regular Trading' }
        // - { raw: '<html>...</html>' }
        let normalized: any = {};
        if (data == null) {
          normalized.marketStatus = undefined;
        } else if (typeof data === 'object') {
          normalized.marketStatus = data.marketStatus || data.status || undefined;
          // If upstream returned raw HTML wrapped in `raw`, keep that too
          if (data.raw) normalized.raw = data.raw;
        } else if (typeof data === 'string') {
          normalized.marketStatus = data;
        }

        setMarketData(normalized);

        // Now fetch ASPI data and merge into marketData.indices.aspi
        try {
          const aspiResp = await fetch("/api/aspiData", {
            method: "POST",
            credentials: "include",
            headers: { "Accept": "application/json" }
          });
          if (aspiResp.ok) {
            const aspiData = await aspiResp.json();
            // normalize aspiData: it might be { indices: { aspi: {...} } } or { indexValue: 123 }
            let aspiNormalized: any = null;
            if (aspiData == null) {
              aspiNormalized = null;
            } else if (typeof aspiData === 'object') {
              // Map the provided shape:
              // { id, value, lowValue, highValue, change, percentage, ... }
              if (aspiData.value !== undefined) {
                aspiNormalized = {
                  indexValue: aspiData.value,
                  change: (aspiData.percentage !== undefined) ? aspiData.percentage : aspiData.change
                };
              } else if (aspiData.indices && aspiData.indices.aspi) {
                aspiNormalized = aspiData.indices.aspi;
              } else if (aspiData.aspi) {
                aspiNormalized = aspiData.aspi;
              } else if (aspiData.indexValue || aspiData.change) {
                aspiNormalized = {
                  indexValue: aspiData.indexValue,
                  change: aspiData.change
                };
              } else if (aspiData.raw && typeof aspiData.raw === 'string') {
                // downstream returned wrapped raw HTML/text; leave as null
                aspiNormalized = null;
              }
            }

            setMarketData((prev: any) => ({
              ...(prev || {}),
              indices: {
                ...(prev?.indices || {}),
                aspi: aspiNormalized
              }
            }));
          }
        } catch (e) {
          // non-fatal; leave ASPI as-is
          console.debug("Failed to fetch ASPI data:", e);
        }
      } catch (err) {
        console.error("Failed to fetch market status:", err);
        setError("Failed to load market data");
      } finally {
        setLoading(false);
      }
    };

    fetchMarketStatus();
  }, []);

  const getStatusColor = (status: string | undefined | null) => {
    if (!status) return "bg-gray-500";
    return status.toLowerCase().includes("open")
      ? "bg-green-500"
      : "bg-red-500";
  };

  return (
    <div 
      className="h-[700px] flex flex-col items-center justify-center bg-slate-900 p-10 relative"
      style={{
        backgroundImage: "url('./src/Images/Header Background.png')",
        backgroundSize: 'cover',
        backgroundPosition: 'center',
        backgroundRepeat: 'no-repeat'
      }}
    >
      <div className="absolute inset-0 bg-slate-900 bg-opacity-70"></div>
      
      <div className="relative z-10 flex flex-col items-center justify-center text-center">
        <h1 className="text-white text-6xl m-0 font-bold font-sans">
          CSE <span className="text-yellow-500">Analytics</span>
        </h1>
        <p className="mt-6 italic font-sans text-gray-300 text-xl text-center max-w-2xl">
          Uncover corporate networks and market intelligence on the Colombo Stock Exchange.
        </p>

        {/* 🟢 Market Status Indicator */}
        <div className="mt-8 flex items-center space-x-4 bg-slate-800 bg-opacity-90 px-6 py-3 rounded-lg backdrop-blur-sm">
          {loading ? (
            <span className="text-gray-400 italic">Loading market data...</span>
          ) : error ? (
            <span className="text-red-400">{error}</span>
          ) : (
            <>
              <div className={`w-3 h-3 rounded-full animate-pulse ${getStatusColor(marketData?.marketStatus)}`}></div>
              <span className="text-gray-300 font-medium">
                {marketData?.marketStatus || "Unknown Status"}
              </span>
              <span className="text-yellow-500 font-bold">
                ASPI: {marketData?.indices?.aspi?.indexValue || "N/A"}{" "}
                {marketData?.indices?.aspi?.change ? (
                  <>
                    {marketData.indices.aspi.change > 0 ? "▲" : "▼"}{" "}
                    {marketData.indices.aspi.change.toFixed(2)}%
                  </>
                ) : null}
              </span>
            </>
          )}
        </div>

        {/* Buttons
        <div className="mt-8 flex space-x-4">
          <button className="bg-yellow-500 hover:bg-yellow-600 text-slate-900 font-bold px-8 py-3 rounded-lg transition-all duration-200 transform hover:scale-105">
            Start Analysis
          </button>
          <button className="border-2 border-yellow-500 text-yellow-500 hover:bg-yellow-500 hover:text-slate-900 font-bold px-8 py-3 rounded-lg transition-all duration-200">
            View Market Data
          </button>
        </div> */}
      </div>
    </div>
  );
};

export default Header;
