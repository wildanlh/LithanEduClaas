import Image from "next/image";
import Link from "next/link";
import React from "react";
import { useRouter } from "next/router";

interface SidebarProps {
  logoSrc: string;
  links: { icon: string; href: string; label: string }[];
}

const Sidebar: React.FC<SidebarProps> = ({ logoSrc, links }) => {
  const router = useRouter();
  const isActive = (href: string) => router.asPath === href;
  return (
    <>
      <button
        data-drawer-target="logo-sidebar"
        data-drawer-toggle="logo-sidebar"
        aria-controls="logo-sidebar"
        type="button"
        className="inline-flex items-center p-2 mt-2 ml-3 text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
      >
        <span className="sr-only">Open sidebar</span>
        <svg
          className="w-6 h-6"
          aria-hidden="true"
          fill="currentColor"
          viewBox="0 0 20 20"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            clip-rule="evenodd"
            fill-rule="evenodd"
            d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"
          ></path>
        </svg>
      </button>

      <aside
        id="logo-sidebar"
        className="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0"
        aria-label="Sidebar"
      >
        <div className="h-full px-3 py-4 overflow-y-auto bg-blue">
          <Link href="/" className="flex items-center pl-2.5 mb-10 mt-5">
            <Image
              src={logoSrc}
              alt="logo"
              width={500}
              height={500}
              className="mx-auto w-20"
            />
          </Link>

          <div className="bg-orange h-20 rounded-md mb-5">
            <div className="flex items-center justify-items-center h-full">
              <div className="ml-3 flex">
                <Image
                  src="images/default-profile.svg"
                  alt="logo"
                  width={56}
                  height={56}
                  className="h-14"
                />
                <div className="ml-3">
                  <h1 className="text-white font-poppins font-bold text-lg">
                    Full Name
                  </h1>
                  <p className="text-base text-white font-inter">Role</p>
                </div>
              </div>
            </div>
          </div>
          <ul className="space-y-2">
            {links.map(({ icon, href, label }) => (
              <li key={href}>
                <Link
                  href={href}
                  className={`flex items-center p-2 text-base font-bold rounded-lg ${
                    isActive(href) ? "text-orange" : "text-white"
                  } hover:bg-gray-700`}
                >
                  <Image
                    src={icon}
                    alt="logo"
                    width={24}
                    height={24}
                    className={`w-6 h-6 ${
                      isActive(href) ? "" : "brightness-0 invert"
                    }`}
                  />
                  <span className="ml-3">{label}</span>
                </Link>
              </li>
            ))}
          </ul>
          <div className="bottom-0 absolute mb-10">
            <ul className="space-y-2">
              <li>
                <Link
                  href="/logout"
                  className="flex items-center p-2 text-base font-bold rounded-lg text-red hover:bg-gray-700"
                >
                  <Image
                    src="images/logout.svg"
                    alt="logo"
                    width={24}
                    height={24}
                    className="w-6 h-6"
                  />
                  <span className="ml-3">Log Out</span>
                </Link>
              </li>
            </ul>
          </div>
        </div>
      </aside>
    </>
  );
};

export default Sidebar;
