import React from "react";

interface DataTableProps {
  title: string;
  columns: string[];
  data: any[];
}

export default function DataTable({ title, columns, data }: DataTableProps) {
  return (
    <div className="p-4 sm:ml-64 sm:mr-64">
      <div className="flex items-center justify-between pt-5 pb-10">
        <div>
          <h1 className="text-dark text-3xl font-bold font-popins">{title}</h1>
        </div>
        <label htmlFor="table-search" className="sr-only">
          Search
        </label>
        <div className="relative">
          <div className="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
            <svg
              className="w-5 h-5 text-gray-500 "
              aria-hidden="true"
              fill="currentColor"
              viewBox="0 0 20 20"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fillRule="evenodd"
                d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                clipRule="evenodd"
              ></path>
            </svg>
          </div>
          <input
            type="text"
            id="table-search"
            className="block p-2 pl-10 text-sm border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10"
            placeholder="Search"
          />
        </div>
      </div>
      <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table className="w-full text-sm text-left text-dark">
          <thead className="text-sm text-white uppercase bg-orange font-poppins">
            <tr>
              {columns.map((column) => (
                <th key={column} scope="col" className="px-6 py-3">
                  {column}
                </th>
              ))}
            </tr>
          </thead>
          <tbody>
            {data.map((rowData, index) => (
              <tr
                key={index}
                className="bg-light border-b font-medium font-inter"
              >
                {columns.map((column, index) => (
                  <td key={index} className="px-6 py-4">
                    {rowData[column]}
                  </td>
                ))}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
