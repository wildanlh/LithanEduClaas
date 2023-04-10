import Image from "next/image";
import React from "react";

interface ImgProps {
  src: string;
  alt: string;
}

const Img: React.FC<ImgProps> = ({ src, alt }) => {
  return (
    <div className="bg-light flex mb-5">
      <Image
        src={src}
        alt={alt}
        width={176}
        height={176}
        className="h-44 mx-auto"
      />
    </div>
  );
};

export default Img;
