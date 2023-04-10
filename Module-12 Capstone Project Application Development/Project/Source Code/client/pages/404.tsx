import Image from "next/image";

export default function NotFoundPage() {
  return (
    <div className="h-screen bg-blue flex items-center justify-center">
      <div>
        <Image
          src="images/logo.svg"
          alt="logo"
          width={500}
          height={500}
          className="mx-auto md:w-80 w-20 md:mb-10 mb-5"
        />
        <h1 className="text-white md:text-3xl text-lg font-bold font-popins text-center">
          404 Error Not Found
        </h1>
      </div>
    </div>
  );
}
