import MainDashboard from './Components/MainDashboard'
// import Header from './Components/Header'
import Chatbot from './Components/ChatInterface'
import NavBar from './Components/NavBar'
import Graph from './Components/Graph'

// import "@fontsource/inter"; // Defaults to weight 400


function App() {

  return (
    <div>
      <NavBar/>
      <MainDashboard />
      <Graph/>
      <Chatbot/>
    </div>
  )
}

export default App
