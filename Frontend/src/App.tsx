import Header from './Components/Header'
import ChatInterface from './Components/ChatInterface'
import NavBar from './Components/NavBar'
// import Graph from './Components/Graph'

// import "@fontsource/inter"; // Defaults to weight 400


function App() {

  return (
    <div>
      <NavBar/>
      <Header/>
      {/* <Graph/> */}
      <ChatInterface/>
    </div>
  )
}

export default App
