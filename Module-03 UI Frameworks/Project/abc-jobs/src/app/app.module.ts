import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginFormComponent } from './auth/login/login-form/login-form.component';
import { RegisterFormComponent } from './auth/register/register-form/register-form.component';
import { HomeComponent } from './pages/home/home.component';
import { RegisterConfirmComponent } from './auth/register/register-confirm/register-confirm.component';
import { RegisterConfirmEmailComponent } from './auth/register/register-confirm-email/register-confirm-email.component';
import { ForgotPasswordComponent } from './auth/login/forgot-password/forgot-password.component';
import { ForgotPasswordConfirmComponent } from './auth/login/forgot-password-confirm/forgot-password-confirm.component';
import { SearchComponent } from './pages/search/search.component';
import { ProfileComponent } from './user/profile/profile.component';
import { ProfilePublicComponent } from './user/profile-public/profile-public.component';
import { ProfileEditComponent } from './user/profile-edit/profile-edit.component';
import { UserAccountService } from './user-account.service';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NavbarComponent } from './snippets/navbar/navbar.component';
import { FooterComponent } from './snippets/footer/footer.component';
import { FilterPipe } from './filter.pipe';

@NgModule({
  declarations: [
    AppComponent,
    LoginFormComponent,
    RegisterFormComponent,
    HomeComponent,
    RegisterConfirmComponent,
    RegisterConfirmEmailComponent,
    ForgotPasswordComponent,
    ForgotPasswordConfirmComponent,
    SearchComponent,
    ProfileComponent,
    ProfilePublicComponent,
    ProfileEditComponent,
    NavbarComponent,
    FooterComponent,
    FilterPipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    NgbModule,
  ],
  providers: [UserAccountService],
  bootstrap: [AppComponent]
})
export class AppModule { }
