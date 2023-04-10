import Button from "@/components/forms/button";
import FileInput from "@/components/forms/fileInput";
import Input from "@/components/forms/input";
import Select from "@/components/forms/select";
import SideForm from "@/components/forms/sideForm";
import PageHead from "@/components/header/pageHead";
import InventoryLayout from "@/components/layouts/inventoryLayout";
import DataTable from "@/components/table/inventoryTable";
import Image from "next/image";
import React from "react";

const options = ["Admin", "User"];

export default function UsersPage() {
  const columns = ["Name", "Age", "Email"];
  const data = [
    { Name: "John", Age: 25, Email: "john@example.com" },
    { Name: "Jane", Age: 30, Email: "jane@example.com" },
    { Name: "Bob", Age: 40, Email: "bob@example.com" },
  ];

  function handleFileInputChange(
    event: React.ChangeEvent<HTMLInputElement>
  ): void {
    const file = event.target.files?.[0];
    if (file) {
      console.log(file.name);
    }
  }
  return (
    <>
      <PageHead pageTitle="Users | JumpStart" />
      <InventoryLayout>
        <DataTable title="Users" columns={columns} data={data} />
        <SideForm>
          <div className="flex justify-between content-between">
            <h1 className="text-xl text-blue font-bold font-poppins">Users</h1>
            <button>
              <Image
                src="images/trash.svg"
                alt="logo"
                width={24}
                height={24}
                className="w-6 h-6"
              />
            </button>
          </div>
          <form action="" className="my-5">
            <div className="rounded-md shadow-sm text-base font-inter">
              <Input
                label="First Name"
                id="firstName"
                placeholder="First Name"
              />
              <Input label="Last Name" id="lastName" placeholder="Last Name" />
              <Input label="Phone" id="phone" placeholder="Phone" />
              <Input label="Address" id="address" placeholder="Address" />
              <Input label="City" id="city" placeholder="City" />
              <Input label="Country" id="country" placeholder="Country" />
              <Input label="Email" id="email" placeholder="Email" />
              <Select name="Role" label="Role" id="role" options={options} />
              <FileInput label="User Image" onChange={handleFileInputChange} />
            </div>
            <div className="my-10">
              <div className="flex justify-between content-between">
                <Button
                  label="Add"
                  backgroundColor="bg-orange"
                  paddingX="px-9"
                />
                <Button
                  label="Edit"
                  backgroundColor="bg-yellow"
                  paddingX="px-9"
                />
              </div>
              <Button
                label="Clear"
                backgroundColor="bg-blue"
                paddingX="w-full my-3"
              />
            </div>
          </form>
        </SideForm>
      </InventoryLayout>
    </>
  );
}
