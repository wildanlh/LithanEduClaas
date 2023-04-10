import LoginForm from "@/components/forms/loginForm";
import PageHead from "@/components/header/pageHead";
import AuthLayout from "@/components/layouts/authLayout";
import React from "react";

export default function LoginPage() {
  return (
    <>
      <PageHead pageTitle="Login | JumpStart" />
      <AuthLayout>
        <LoginForm />
      </AuthLayout>
    </>
  );
}
