import React, { FC } from "react";

type ButtonProps = {
  label: string;
  backgroundColor?: string;
  paddingX?: string;
};

const Button: FC<ButtonProps> = ({
  label,
  backgroundColor = "bg-orange",
  paddingX = "px-9",
}) => (
  <button
    className={`text-white font-poppins py-2 rounded-full font-bold text-base uppercase ${backgroundColor} ${paddingX}`}
  >
    {label}
  </button>
);

export default Button;
