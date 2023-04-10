import React, { ChangeEventHandler } from "react";

interface FileInputProps {
  label: string;
  onChange: ChangeEventHandler<HTMLInputElement>;
}

const FileInput: React.FC<FileInputProps> = ({ label, onChange }) => {
  return (
    <div>
      <label htmlFor="user_avatar" className="font-poppins font-bold">
        {label}
      </label>
      <input
        id="user_avatar"
        type="file"
        className="mt-2 relative block w-full p-3 border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
        aria-describedby="user_avatar_help"
        onChange={onChange}
      />
    </div>
  );
};

export default FileInput;
