import RegisterForm from "@/components/forms/registerForm";
import PageHead from "@/components/header/pageHead";
import AuthLayout from "@/components/layouts/authLayout";
import React from "react";

export default function RegisterPage() {
  return (
    <>
      <PageHead pageTitle="Register | JumpStart" />
      <AuthLayout>
        <RegisterForm />
      </AuthLayout>
    </>
  );
}
