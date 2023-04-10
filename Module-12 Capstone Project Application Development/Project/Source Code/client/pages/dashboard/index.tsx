import PageHead from "@/components/header/pageHead";
import InventoryLayout from "@/components/layouts/inventoryLayout";
import React from "react";

export default function DashboardPage() {
  return (
    <>
      <PageHead pageTitle="Dashboard | JumpStart" />
      <InventoryLayout>
        <div className="p-4 sm:ml-64">
          <div className="flex items-center justify-between pt-5 pb-10">
            <div>
              <h1 className="text-dark text-3xl font-bold font-popins">
                Dashboard
              </h1>
            </div>
          </div>
          <div className="grid grid-cols-3 gap-4 mb-4">
            <div className="flex items-center justify-center h-24 rounded bg-orange ">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center h-24 rounded bg-orange ">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center h-24 rounded bg-orange ">
              <p className="text-2xl text-white">+</p>
            </div>
          </div>
          <div className="flex items-center justify-center h-48 mb-4 rounded bg-orange">
            <p className="text-2xl text-white">+</p>
          </div>
          <div className="grid grid-cols-2 gap-4 mb-4">
            <div className="flex items-center justify-center rounded bg-orange h-28 ">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center rounded bg-orange h-28 ">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center rounded bg-orange h-28 ">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center rounded bg-orange h-28 ">
              <p className="text-2xl text-white">+</p>
            </div>
          </div>
          <div className="flex items-center justify-center h-48 mb-4 rounded bg-orange">
            <p className="text-2xl text-white">+</p>
          </div>
          <div className="grid grid-cols-2 gap-4">
            <div className="flex items-center justify-center rounded bg-orange h-28">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center rounded bg-orange h-28">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center rounded bg-orange h-28">
              <p className="text-2xl text-white">+</p>
            </div>
            <div className="flex items-center justify-center rounded bg-orange h-28">
              <p className="text-2xl text-white">+</p>
            </div>
          </div>
        </div>
      </InventoryLayout>
    </>
  );
}
