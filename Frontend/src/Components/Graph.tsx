// // @ts-ignore
// import NeoVis from "neovis.js";
// import React, { useEffect, useRef, useState } from "react";

// const Graph: React.FC = () => {
//   const containerRef = useRef<HTMLDivElement | null>(null);
//   const [error, setError] = useState<string | null>(null);
//   const [isLoading, setIsLoading] = useState(true);

//   useEffect(() => {
//     if (!containerRef.current) return;

//     const config = {
//       containerId: containerRef.current.id,
//       serverUrl: "bolt://localhost:7687",  // Using bolt:// protocol
//       serverUser: "neo4j",
//       serverPassword: "password", // Matches your docker-compose.yml
//       initialCypher: "MATCH (n) RETURN n LIMIT 5", // Simplified query for testing
//       labels: {
//         // Optional: customize node appearance
//       },
//       relationships: {
//         // Optional: customize relationship appearance
//       },
//       arrows: true
//     };

//     try {
//       const viz = new NeoVis(config);
      
//       // Add event listeners for better error handling
//       viz.registerOnEvent("error", (error: any) => {
//         console.error("NeoVis error:", error);
//         setError(`Connection failed: ${error.message || 'Unknown error'}`);
//         setIsLoading(false);
//       });

//       viz.registerOnEvent("completed", () => {
//         console.log("Graph rendering completed");
//         setIsLoading(false);
//         setError(null);
//       });

//       viz.render();
//     } catch (err) {
//       console.error("Failed to initialize NeoVis:", err);
//       setError(`Initialization failed: ${err}`);
//       setIsLoading(false);
//     }

//     // Cleanup function
//     return () => {
//       // Clear the container if needed
//       if (containerRef.current) {
//         containerRef.current.innerHTML = '';
//       }
//     };
//   }, []);

//   if (error) {
//     return (
//       <div style={{ padding: "20px", color: "red", border: "1px solid red", borderRadius: "4px" }}>
//         <h3>Connection Error</h3>
//         <p>{error}</p>
//         <div style={{ marginTop: "10px", fontSize: "12px", color: "#666" }}>
//           <strong>Troubleshooting:</strong>
//           <ul style={{ marginTop: "5px" }}>
//             <li>Check if Neo4j container is running: <code>docker ps</code></li>
//             <li>Verify the password matches your container setup</li>
//             <li>Try accessing Neo4j browser at <code>http://localhost:7474</code></li>
//             <li>Check container logs: <code>docker logs [container-name]</code></li>
//           </ul>
//         </div>
//       </div>
//     );
//   }

//   return (
//     <div>
//       {isLoading && (
//         <div style={{ padding: "20px", textAlign: "center" }}>
//           Loading graph...
//         </div>
//       )}
//       <div 
//         id="viz" 
//         ref={containerRef} 
//         style={{ 
//           height: "600px", 
//           border: "1px solid #ccc",
//           display: isLoading ? "none" : "block"
//         }} 
//       />
//     </div>
//   );
// };

// export default Graph;