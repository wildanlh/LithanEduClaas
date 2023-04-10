import Image from "next/image";
import Link from "next/link";
import React, { ReactNode } from "react";

type Props = {
  children: ReactNode;
};

export default function AuthLayout(props: Props) {
  return (
    <div className="bg-blue w-full h-screen">
      <Image
        src="images/logo.svg"
        alt="logo"
        width={500}
        height={500}
        className="mx-auto w-20 py-14"
      />
      <main>{props.children}</main>
      <footer className="fixed bottom-0 w-full mb-10">
        <Link href="/">
          <Image
            src="images/home.svg"
            alt="logo"
            width={500}
            height={500}
            className="mx-auto w-8 mb-5"
          />
        </Link>
        <p className="text-sm text-white font-inter text-center">
          © 2023 JumpStart Inventory Software <br /> All rights reserved.
        </p>
      </footer>
    </div>
  );
}
