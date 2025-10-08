import React from "react";

const Navbar = () => {
  return (
    <nav className="bg-slate-900 text-white shadow-2xl border-b-2 border-yellow-500">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-20">
          {/* Logo Section */}
          <div className="flex items-center space-x-3">
            <div className="bg-yellow-500 p-2 rounded-lg">
              <svg className="w-8 h-8 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                <path d="M16 6l2.29 2.29-4.88 4.88-4-4L2 16.59 3.41 18l6-6 4 4 6.3-6.29L22 12V6z"/>
              </svg>
            </div>
            <div>
              <h1 className="text-2xl font-bold text-white">
                CSE <span className="text-yellow-500">Analytics</span>
              </h1>
              <p className="text-xs text-gray-400 -mt-1">Colombo Stock Exchange Insights</p>
            </div>
          </div>

          {/* Navigation Links */}
          <div className="hidden md:flex items-center space-x-8">
            <a 
              href="#" 
              className="text-yellow-500 border-b-2 border-yellow-500 pb-1 font-medium transition-colors duration-200"
            >
              Dashboard
            </a>
            <a 
              href="#" 
              className="text-gray-300 hover:text-yellow-500 hover:border-b-2 hover:border-yellow-500 pb-1 transition-all duration-200"
            >
              Market Data
            </a>
            <a 
              href="#" 
              className="text-gray-300 hover:text-yellow-500 hover:border-b-2 hover:border-yellow-500 pb-1 transition-all duration-200"
            >
              Analysis
            </a>
            <a 
              href="#" 
              className="text-gray-300 hover:text-yellow-500 hover:border-b-2 hover:border-yellow-500 pb-1 transition-all duration-200"
            >
              Watchlist
            </a>
            <a 
              href="#" 
              className="text-gray-300 hover:text-yellow-500 hover:border-b-2 hover:border-yellow-500 pb-1 transition-all duration-200"
            >
              Reports
            </a>
          </div>

          {/* Market Status & User Section */}
          <div className="flex items-center space-x-4">
            {/* Live Market Status */}
            <div className="hidden lg:flex items-center space-x-2 bg-slate-800 px-3 py-2 rounded-lg">
              <div className="w-2 h-2 bg-green-500 rounded-full animate-pulse"></div>
              <span className="text-sm text-gray-300">Market Open</span>
            </div>
            
            {/* User Profile */}
            <div className="w-10 h-10 bg-gray-600 rounded-full flex items-center justify-center cursor-pointer hover:bg-gray-500 transition-colors">
              <svg className="w-6 h-6 text-gray-300" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
              </svg>
            </div>

            {/* Mobile Menu Button */}
            <button className="md:hidden text-gray-300 hover:text-white">
              <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
              </svg>
            </button>
          </div>
        </div>

        {/* Mobile Navigation */}
        <div className="md:hidden border-t border-gray-700 pt-4 pb-4">
          <div className="flex flex-col space-y-3">
            <a href="#overview" className="text-yellow-500 font-medium">Market Overview</a>
            <a href="#top-gainers" className="text-gray-300 hover:text-yellow-500 transition-colors">Top Gainers</a>
            <a href="#top-losers" className="text-gray-300 hover:text-yellow-500 transition-colors">Top Losers</a>
            <a href="#sector-performance" className="text-gray-300 hover:text-yellow-500 transition-colors">Sector Performance</a>
            <a href="#market-news" className="text-gray-300 hover:text-yellow-500 transition-colors">Market News</a>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;