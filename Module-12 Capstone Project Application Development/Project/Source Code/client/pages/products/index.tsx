import Button from "@/components/forms/button";
import FileInput from "@/components/forms/fileInput";
import Img from "@/components/forms/img";
import Input from "@/components/forms/input";
import Select from "@/components/forms/select";
import SideForm from "@/components/forms/sideForm";
import PageHead from "@/components/header/pageHead";
import InventoryLayout from "@/components/layouts/inventoryLayout";
import DataTable from "@/components/table/inventoryTable";
import Image from "next/image";
import React from "react";

const options = ["John Doe", "Jane Doe", "Bob Smith"];

export default function ProductPage() {
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
      <PageHead pageTitle="Products | JumpStart" />
      <InventoryLayout>
        <DataTable title="Products" columns={columns} data={data} />
        <SideForm>
          <div className="flex justify-between content-between">
            <h1 className="text-xl text-blue font-bold font-poppins">
              Products
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
              <Select
                name="Supplier"
                label="Supplier"
                id="suppliers"
                options={options}
              />
              <Img src="images/iphone.svg" alt="iphone" />

              <Input
                label="Product Code"
                id="productCode"
                placeholder="Product Code"
              />
              <Input
                label="Product Name"
                id="productName"
                placeholder="Product Name"
              />
              <Input label="Quantity" id="quantity" placeholder="Quantity" />
              <Input
                label="Cost Price"
                id="costPrice"
                placeholder="Cost Price"
              />
              <Input
                label="Selling Price"
                id="sellingPrice"
                placeholder="Selling Price"
              />
              <Input label="Brand" id="brand" placeholder="Brand" />
              <FileInput
                label="Product Image"
                onChange={handleFileInputChange}
              />
            </div>
            <div className="my-10">
              <div className="flex justify-between content-between">
                <Button
                  label="Add"
                  backgroundColor="bg-orange"
                  paddingX="px-8"
                />
                <Button
                  label="Edit"
                  backgroundColor="bg-yellow"
                  paddingX="px-8"
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
