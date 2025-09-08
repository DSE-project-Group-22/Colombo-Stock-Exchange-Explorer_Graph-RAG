import React from "react";

const Navbar = () => {
  return (
    <nav className="bg-blue-800 text-white shadow-xl h-[150px]">
      <div className="max-w-screen mx-auto px-4 sm:px-6 lg:px-8 h-full flex items-center">
        <div className="flex justify-between w-full">
          {/* Logo */}
          <div className="flex items-center px-10">
            <span className="text-[48px] font-bold tracking-wide">
              Colombo Stock Insight
            </span>
          </div>

          {/* Desktop Links */}
          <div className="flex space-x-6 items-center text-[30px] px-10">
            <a href="#" className="hover:text-gray-200">Home</a>
            <a href="#" className="hover:text-gray-200">Insights</a>
            <a href="#" className="hover:text-gray-200">About</a>
            <a href="#" className="hover:text-gray-200">Contact</a>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
