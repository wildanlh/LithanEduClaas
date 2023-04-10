import Image from "next/image";
import Link from "next/link";
import React from "react";

export default function ContactForm() {
  return (
    <div className="bg-cyan md:w-3/4 w-80 p-10 mx-auto rounded-lg">
      <h1 className="text-blue font-raleway text-4xl font-bold mb-5">
        Suggestion
      </h1>

      <div className="grid grid-cols-2 gap-4">
        <div>
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
                <label htmlFor="message" className="sr-only">
                  Message
                </label>
                <textarea
                  id="message"
                  name="message"
                  required
                  className="mb-5 relative block w-full p-3 border border-blue placeholder-blue text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                  placeholder="Message"
                />
              </div>
            </div>
            <button className="w-full bg-orange text-white p-3 rounded-full font-medium mt-5">
              Send
            </button>
          </form>
        </div>
        <div className="flex">
          <Image
            src="images/customer-service.svg"
            alt="image"
            width={350}
            height={350}
            className="mx-auto"
          />
        </div>
      </div>
    </div>
  );
}
