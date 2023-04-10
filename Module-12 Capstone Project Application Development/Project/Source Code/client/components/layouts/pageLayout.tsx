import React, { ReactNode } from "react";
import Footer from "../footer/footer";
import Navbar from "../navbar/navbar";

type Props = {
  children: ReactNode;
};

const links = [
  { href: "/", label: "Home" },
  { href: "/about", label: "About" },
  { href: "/contact", label: "Contact" },
];

export default function PageLayout(props: Props) {
  return (
    <div className="w-full">
      <Navbar logoSrc="images/logo.svg" links={links} />
      <main>{props.children}</main>
      <Footer links={links} />
    </div>
  );
}
