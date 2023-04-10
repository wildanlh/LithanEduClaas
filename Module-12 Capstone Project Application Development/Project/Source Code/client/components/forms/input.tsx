import React from "react";

interface InputProps {
  label: string;
  id: string;
  placeholder: string;
}

const Input: React.FC<InputProps> = ({ label, id, placeholder }) => {
  return (
    <div>
      <label htmlFor={id} className="font-poppins font-bold">
        {label}
      </label>
      <input
        id={id}
        name={id}
        type="text"
        className="mt-2 mb-5 relative block w-full p-3 border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
        placeholder={placeholder}
      />
    </div>
  );
};

export default Input;
