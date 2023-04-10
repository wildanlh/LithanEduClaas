import Image from "next/image";
import Link from "next/link";
import React from "react";

interface FooterProps {
  links: { href: string; label: string }[];
}

const Footer: React.FC<FooterProps> = ({ links }) => {
  return (
    <footer className="bg-blue">
      <div className="container mx-auto py-10 text-center">
        <div className="flex justify-center items-center">
          <Image
            src="images/logo.svg"
            alt="logo"
            width={80}
            height={80}
            className="mx-auto w-20 mb-10"
          />
        </div>
        <div className="mb-10">
          <ul className="flex justify-center space-x-8">
            {links.map(({ href, label }) => (
              <li key={href}>
                <Link
                  href={href}
                  className="font-poppins text-white hover:border-b-2 hover:border-white hover:transition hover:ease-in-out hover:delay-150 hover:duration-700 font-semibold uppercase"
                >
                  {label}
                </Link>
              </li>
            ))}
          </ul>
        </div>
        <p className="text-white font-opensans">
          © 2023 JumpStart Inventory Software. All rights reserved.
        </p>
      </div>
    </footer>
  );
};

export default Footer;
