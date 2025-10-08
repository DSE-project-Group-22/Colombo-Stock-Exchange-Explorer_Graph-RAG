// // @ts-ignore
// import NeoVis from "neovis.js";
// import React, { useEffect, useRef, useState } from "react";

// const Graph: React.FC = () => {
//   const containerRef = useRef<HTMLDivElement | null>(null);
//   const [isLoading, setIsLoading] = useState(true);

//   useEffect(() => {
//     if (!containerRef.current) return;

//     const renderDummyGraph = () => {
//       const nodes = [
//         { id: "1", label: "Node 1" },
//         { id: "2", label: "Node 2" },
//         { id: "3", label: "Node 3" },
//       ];

//       const edges = [
//         { id: "e1", from: "1", to: "2" },
//         { id: "e2", from: "2", to: "3" },
//       ];

//       const viz = new NeoVis({
//         containerId: containerRef.current.id,
//         nodes,
//         edges,
//         arrows: true,
//       });

//       viz.registerOnEvent("completed", () => {
//         setIsLoading(false);
//       });

//       viz.render();
//     };

//     renderDummyGraph();

//     return () => {
//       if (containerRef.current) containerRef.current.innerHTML = "";
//     };
//   }, []);

//   return (
//     <div>
//       {isLoading && <div style={{ padding: "20px", textAlign: "center" }}>Loading graph...</div>}
//       <div
//         id="viz"
//         ref={containerRef}
//         style={{ height: "600px", border: "1px solid #ccc", display: isLoading ? "none" : "block" }}
//       />
//     </div>
//   );
// };

// export default Graph;
