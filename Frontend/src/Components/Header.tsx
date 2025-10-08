import React from 'react'

const Header = () => {
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
      {/* Dark overlay for better text readability */}
      <div className="absolute inset-0 bg-slate-900 bg-opacity-70"></div>
      
      {/* Content wrapper with relative positioning */}
      <div className="relative z-10 flex flex-col items-center justify-center text-center">
      <h1 className="text-white text-6xl m-0 font-bold font-sans">
        CSE <span className="text-yellow-500">Analytics</span>
      </h1>
      <p className="mt-6 italic font-sans text-gray-300 text-xl text-center max-w-2xl">
        Uncover corporate networks and market intelligence on the Colombo Stock Exchange.
      </p>
      
      {/* Market Status Indicator */}
      <div className="mt-8 flex items-center space-x-4 bg-slate-800 bg-opacity-90 px-6 py-3 rounded-lg backdrop-blur-sm">
        <div className="w-3 h-3 bg-green-500 rounded-full animate-pulse"></div>
        <span className="text-gray-300 font-medium">CSE Market Open</span>
        <span className="text-yellow-500 font-bold">ASPI: 12,847.23 ▲ +1.2%</span>
      </div>
      
      {/* Call to Action */}
      <div className="mt-8 flex space-x-4">
        <button className="bg-yellow-500 hover:bg-yellow-600 text-slate-900 font-bold px-8 py-3 rounded-lg transition-all duration-200 transform hover:scale-105">
          Start Analysis
        </button>
        <button className="border-2 border-yellow-500 text-yellow-500 hover:bg-yellow-500 hover:text-slate-900 font-bold px-8 py-3 rounded-lg transition-all duration-200">
          View Market Data
        </button>
      </div>
      
      </div>
    </div>
  )
}

export default Header