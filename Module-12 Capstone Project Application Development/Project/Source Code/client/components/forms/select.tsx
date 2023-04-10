import { FC } from "react";
import Link from "next/link";

interface SelectProps {
  label: string;
  id: string;
  name: string;
  options: string[];
}

const Select: FC<SelectProps> = ({ label, id, name, options }) => {
  return (
    <div className="mb-5">
      <label htmlFor={id} className="font-poppins font-bold">
        {label}
      </label>
      <select
        id={id}
        name={name}
        className="mt-2 relative block w-full p-3 border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
      >
        <option>Select {name}</option>
        {options.map((option) => (
          <option key={option}>{option}</option>
        ))}
      </select>
      <p className="text-blue text-sm text-center font-inter">
        New {name}?
        <Link href="/register" className="underline ml-2">
          Click Here
        </Link>
      </p>
    </div>
  );
};

export default Select;
