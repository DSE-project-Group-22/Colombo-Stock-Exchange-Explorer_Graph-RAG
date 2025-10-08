import Header from './Components/Header'
import ChatInterface from './Components/ChatInterface'
import NavBar from './Components/NavBar'
import GraphVisualizer from './Components/GraphVisualizer'
// import Graph from './Components/Graph'

// import "@fontsource/inter"; // Defaults to weight 400


function App() {

  return (
    <div>
      <NavBar/>
      <Header/>
      <GraphVisualizer/>
      <ChatInterface/>
    </div>
  )
}

export default App
