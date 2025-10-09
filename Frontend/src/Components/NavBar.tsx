import React from "react";

const Navbar = () => {
  return (
    <nav className="bg-slate-900 text-white shadow-2xl border-b-2 border-yellow-500">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="h-20 flex items-center justify-center">
          <div className="flex items-center space-x-3">
            <div className="bg-yellow-500 p-2 rounded-lg">
              <svg className="w-8 h-8 text-slate-900" fill="currentColor" viewBox="0 0 24 24">
                <path d="M16 6l2.29 2.29-4.88 4.88-4-4L2 16.59 3.41 18l6-6 4 4 6.3-6.29L22 12V6z"/>
              </svg>
            </div>
            <div className="text-center">
              <h1 className="text-2xl font-bold text-white">
                CSE <span className="text-yellow-500">Analytics</span>
              </h1>
              <p className="text-xs text-gray-400 -mt-1">Colombo Stock Exchange Insights</p>
            </div>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
