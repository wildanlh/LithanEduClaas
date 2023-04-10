import Image from "next/image";
import Link from "next/link";

interface NavbarProps {
  logoSrc: string;
  links: { href: string; label: string }[];
}

const Navbar: React.FC<NavbarProps> = ({ logoSrc, links }) => {
  return (
    <nav className="bg-blue px-2 sm:px-4 py-3 fixed w-full z-50 top-0 left-0">
      <div className="max-w-7xl container flex flex-wrap items-center justify-between mx-auto">
        <Link href="/" className="flex items-center">
          <Image
            src={logoSrc}
            className="h-6 sm:h-9"
            alt="Flowbite Logo"
            width={100}
            height={100}
          />
        </Link>
        <div className="flex md:order-2">
          <Link
            href="/login"
            className="text-white  py-1 font-poppins font-bold hidden md:block"
          >
            Login
          </Link>
          <Link
            href="/register"
            className="text-blue bg-white py-1 px-2 rounded-md font-poppins font-bold ml-3 hidden md:block"
          >
            Join
          </Link>
          <button
            data-collapse-toggle="navbar-sticky"
            type="button"
            className="inline-flex items-center p-2 text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
            aria-controls="navbar-sticky"
            aria-expanded="false"
          >
            <span className="sr-only">Open main menu</span>
            <svg
              className="w-6 h-6"
              aria-hidden="true"
              fill="currentColor"
              viewBox="0 0 20 20"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                clip-rule="evenodd"
              ></path>
            </svg>
          </button>
        </div>
        <div
          className="items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
          id="navbar-sticky"
        >
          <ul className="flex flex-col p-4 mt-4 md:flex-row md:space-x-10 md:mt-0 md:text-base md:font-bold text-white md:border-0 font-poppins font-bold uppercase">
            {links.map(({ href, label }) => (
              <li key={href} className="py-1">
                <Link href={href} className="block pl-3 pr-4 md:p-0">
                  {label}
                </Link>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
