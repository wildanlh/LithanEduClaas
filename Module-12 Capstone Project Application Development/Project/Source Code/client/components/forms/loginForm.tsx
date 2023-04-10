import Link from "next/link";
import React from "react";

export default function LoginForm() {
  return (
    <div className="bg-white md:w-96 w-80 p-10 mx-auto rounded-lg">
      <h1 className="text-blue font-raleway text-2xl font-bold uppercase mb-5">
        Login
      </h1>
      <form action="" className="my-5">
        <div className="rounded-md shadow-sm text-base font-inter">
          <div>
            <label htmlFor="email-address" className="sr-only">
              Email address
            </label>
            <input
              id="email-address"
              name="email"
              type="email"
              autoComplete="email"
              required
              className="mb-5 relative block w-full p-3 border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
              placeholder="Email address"
            />
          </div>
          <div>
            <label htmlFor="password" className="sr-only">
              Password
            </label>
            <input
              id="password"
              name="password"
              type="password"
              autoComplete="current-password"
              required
              className="mb-5 relative block w-full p-3 border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
              placeholder="Password"
            />
          </div>
        </div>
        <button className="w-full bg-orange text-white p-3 rounded-full font-medium mt-5">
          Login
        </button>
      </form>
      <p className="text-blue text-sm text-center font-inter">
        Dont have an account?
        <Link href="/register" className="underline ml-2">
          Register here
        </Link>
      </p>
    </div>
  );
}
