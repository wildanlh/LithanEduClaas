import { FC } from "react";
import Image from "next/image";

interface ContactCardProps {
  name: string;
  position: string;
  src: string;
}

const ContactCard: FC<ContactCardProps> = ({ name, position, src }) => {
  return (
    <div className="my-10">
      <div className="flex">
        <Image
          src={src}
          alt="image"
          width={200}
          height={200}
          className="mx-auto rounded-full h-52 p-2 border-4 border-blue my-5"
        />
      </div>
      <h1 className="font-poppins font-bold text-blue text-2xl text-center">
        {name}
      </h1>
      <p className="font-inter text-base text-blue text-center">{position}</p>
    </div>
  );
};

interface ContactCardArrayProps {
  contacts: ContactCardProps[];
}

const ContactCardArray: FC<ContactCardArrayProps> = ({ contacts }) => {
  return (
    <div className="grid grid-cols-3 gap-4">
      {contacts.map((contact) => (
        <ContactCard key={contact.src} {...contact} />
      ))}
    </div>
  );
};

export default ContactCardArray;
