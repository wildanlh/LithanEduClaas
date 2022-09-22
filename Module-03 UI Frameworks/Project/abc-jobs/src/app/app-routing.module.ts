import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ForgotPasswordConfirmComponent } from './auth/login/forgot-password-confirm/forgot-password-confirm.component';
import { ForgotPasswordComponent } from './auth/login/forgot-password/forgot-password.component';
import { LoginFormComponent } from './auth/login/login-form/login-form.component';
import { RegisterConfirmEmailComponent } from './auth/register/register-confirm-email/register-confirm-email.component';
import { RegisterConfirmComponent } from './auth/register/register-confirm/register-confirm.component';
import { RegisterFormComponent } from './auth/register/register-form/register-form.component';
import { HomeComponent } from './pages/home/home.component';
import { SearchComponent } from './pages/search/search.component';
import { ProfileEditComponent } from './user/profile-edit/profile-edit.component';
import { ProfilePublicComponent } from './user/profile-public/profile-public.component';
import { ProfileComponent } from './user/profile/profile.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'login',
    component: LoginFormComponent
  },
  {
    path: 'register',
    component: RegisterFormComponent
  },
  {
    path: 'register-confirm',
    component: RegisterConfirmComponent
  },
  {
    path: 'email-confirm',
    component: RegisterConfirmEmailComponent
  },
  {
    path: 'forgot-password',
    component: ForgotPasswordComponent
  },
  {
    path: 'forgot-password-confirm',
    component: ForgotPasswordConfirmComponent
  },
  {
    path: 'search',
    component: SearchComponent
  },
  {
    path: 'profile/:id',
    component: ProfileComponent
  },
  {
    path: 'profile/:id/edit-profile',
    component: ProfileEditComponent
  },
  {
    path: 'profile/:id/:firstName',
    component: ProfilePublicComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
