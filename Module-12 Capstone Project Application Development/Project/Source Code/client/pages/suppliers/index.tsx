import Button from "@/components/forms/button";
import Input from "@/components/forms/input";
import SideForm from "@/components/forms/sideForm";
import PageHead from "@/components/header/pageHead";
import InventoryLayout from "@/components/layouts/inventoryLayout";
import DataTable from "@/components/table/inventoryTable";
import Image from "next/image";
import React from "react";

export default function SuppliersPage() {
  const columns = ["Name", "Age", "Email"];
  const data = [
    { Name: "John", Age: 25, Email: "john@example.com" },
    { Name: "Jane", Age: 30, Email: "jane@example.com" },
    { Name: "Bob", Age: 40, Email: "bob@example.com" },
  ];
  return (
    <>
      <PageHead pageTitle="Suppliers | JumpStart" />
      <InventoryLayout>
        <DataTable title="Suppliers" columns={columns} data={data} />
        <SideForm>
          <div className="flex justify-between content-between">
            <h1 className="text-xl text-blue font-bold font-poppins">
              Suppliers
            </h1>
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
                label="Supplier Code"
                id="supplierCode"
                placeholder="Supplier Code"
              />
              <Input
                label="First Name"
                id="firstName"
                placeholder="First Name"
              />
              <Input label="Last Name" id="lastName" placeholder="Last Name" />
              <Input label="Phone" id="phone" placeholder="Phone" />
              <Input label="Debit" id="debit" placeholder="Debit" />
              <Input label="Credit" id="debit" placeholder="Credit" />
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
