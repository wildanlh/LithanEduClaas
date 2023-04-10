import PageHead from "@/components/header/pageHead";
import PageLayout from "@/components/layouts/pageLayout";
import Image from "next/image";

export default function Home() {
  return (
    <>
      <PageHead pageTitle="Home | JumpStart" />
      <PageLayout>
        <section className="bg-blue h-1/2 py-20">
          <div className="grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
            <div className="mr-auto place-self-center lg:col-span-7">
              <h1 className="font-poppins font-bold text-white text-4xl">
                All-in-one inventory management software
              </h1>
              <p className="font-inter text-base text-white">
                The only platform you will ever need to help run your business:
                integrated apps, kept simple, and loved by millions of happy
                users.
              </p>
            </div>
            <div className="lg:mt-0 lg:col-span-5 lg:flex">
              <Image
                src="/images/product-manager.svg"
                alt="image"
                width={500}
                height={500}
                className="w-full"
              />
            </div>
          </div>
        </section>

        <div className="bg-cyan flex justify-center items-center py-20">
          <div className="mx-auto container">
            <div className="grid md:grid-cols-4 grid-cols-1 gap-4">
              <div>
                <div className="flex">
                  <Image
                    src="images/product-manager2.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>

                <h1 className="text-blue text-2xl font-bold text-center mt-8 font-poppins">
                  Optimization
                </h1>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/production.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>
                <h1 className="text-blue text-2xl font-bold text-center mt-8 font-poppins">
                  Production
                </h1>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/web-dev.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>
                <h1 className="text-blue text-2xl font-bold text-center mt-8 font-poppins">
                  Efficiency
                </h1>
              </div>
              <div>
                <div className="flex">
                  <Image
                    src="images/production2.svg"
                    alt="image"
                    width={250}
                    height={250}
                    className="mx-auto"
                  />
                </div>
                <h1 className="text-blue text-2xl font-bold text-center mt-8 font-poppins">
                  Automation
                </h1>
              </div>
            </div>
          </div>
        </div>

        <section className="bg-white h-1/2 py-20">
          <h1 className="font-poppins font-bold text-blue text-3xl text-center">
            Connect your Inventory Without The Chaos
          </h1>
          <div className="grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
            <div className="lg:mt-0 lg:col-span-5 lg:flex border-l-2">
              <Image
                src="images/product-manager3.svg"
                alt="image"
                width={500}
                height={500}
                className="w-full"
              />
            </div>
            <div className="mr-auto place-self-center lg:col-span-7">
              <h1 className="font-poppins font-bold text-blue text-3xl">
                Always In Control.
              </h1>
              <p className="font-inter text-base text-blue">
                Creating and managing inventory has never been easier. With
                powerful tools that integrate with popular POS and e-commerce
                systems.
              </p>
            </div>
          </div>
          <div className="grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
            <div className="mr-auto place-self-center lg:col-span-7">
              <h1 className="font-poppins font-bold text-blue text-3xl">
                Save Time And Money.
              </h1>
              <p className="font-inter text-base text-blue">
                JumpStarts inventory tracking software helps you find what is
                selling and what is not, saving you time and money by ensuring
                that your inventory is not only accurate, but has been
                prioritized.
              </p>
            </div>
            <div className="lg:mt-0 lg:col-span-5 lg:flex border-r-2">
              <Image
                src="images/digital-nomad.svg"
                alt="image"
                width={500}
                height={500}
                className="w-full"
              />
            </div>
          </div>
        </section>

        <div className="bg-cream flex justify-center items-center py-20">
          <div className="mx-auto container">
            <h1 className="font-poppins font-bold text-blue text-3xl text-center">
              Boost your shelf confidence with <br /> inventory management
              software
            </h1>
            <div className="flex">
              <Image
                src="images/competition.svg"
                alt="image"
                width={500}
                height={500}
                className="mx-auto"
              />
            </div>
            <div className="flex">
              <button className="w-80 bg-orange text-white p-3 rounded-full font-medium mt-5 text-center mx-auto">
                Try Now
              </button>
            </div>
          </div>
        </div>
      </PageLayout>
    </>
  );
}
