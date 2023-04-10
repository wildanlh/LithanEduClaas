import ContactForm from "@/components/forms/contactForm";
import PageHead from "@/components/header/pageHead";
import PageLayout from "@/components/layouts/pageLayout";
import Image from "next/image";
import React from "react";

export default function ContactPage() {
  return (
    <>
      <PageHead pageTitle="Contact Us | JumpStart" />
      <PageLayout>
        <div className="bg-cyan flex justify-center items-center h-5/6 py-20">
          <div className="mx-auto container">
            <div className="my-28">
              <h1 className="font-poppins font-bold text-blue text-3xl text-center">
                We’re here to help
              </h1>
              <p className="font-inter text-base text-blue text-center">
                Advice and answers from the Our Support team
              </p>
            </div>
            <div className="grid grid-cols-3 gap-4 mt-16 mb-10">
              <div>
                <div className="flex">
                  <Image
                    src="images/call.svg"
                    alt="image"
                    width={60}
                    height={60}
                    className="mx-auto"
                  />
                </div>
                <h1 className="text-blue text-xl font-bold text-center mt-8 font-poppins">
                  +1 123 456
                </h1>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/mail.svg"
                    alt="image"
                    width={60}
                    height={60}
                    className="mx-auto"
                  />
                </div>
                <h1 className="text-blue text-xl font-bold text-center mt-8 font-poppins">
                  help@e-warehouse.com
                </h1>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/pin-location.svg"
                    alt="image"
                    width={60}
                    height={60}
                    className="mx-auto"
                  />
                </div>
                <h1 className="text-blue text-xl font-bold text-center mt-8 font-poppins">
                  Singapore
                </h1>
              </div>
            </div>
          </div>
        </div>

        <div className="bg-white flex justify-center items-center h-5/6 py-10">
          <div className="mx-auto container">
            <h1 className="font-poppins font-bold text-blue text-3xl text-center my-10">
              How would you like to get help?
            </h1>
            <div className="grid grid-cols-3 gap-4 mt-16 mb-10">
              <div>
                <div className="flex">
                  <Image
                    src="images/calling.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>
                <p className="font-inter text-base text-blue text-center my-5">
                  Contact us over live chat your questions if you’re feeling shy
                  today.
                </p>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/send-email.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>
                <p className="font-inter text-base text-blue text-center my-5">
                  Have a niche question? Email us and we’ll look into it
                </p>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/world-connection.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>
                <p className="font-inter text-base text-blue text-center my-5">
                  Our Community can help you find answers
                </p>
              </div>
            </div>
          </div>
        </div>

        <div className="bg-blue flex justify-center items-center h-5/6 py-10">
          <div className="mx-auto container">
            <ContactForm />
          </div>
        </div>
      </PageLayout>
    </>
  );
}
