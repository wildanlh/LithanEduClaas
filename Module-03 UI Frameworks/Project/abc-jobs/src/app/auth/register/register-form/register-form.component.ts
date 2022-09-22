import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { USERS } from 'src/app/mock-user';
import { User } from 'src/app/User';
import { UserAccountService } from 'src/app/user-account.service';

@Component({
  selector: 'app-register-form',
  templateUrl: './register-form.component.html',
  styleUrls: ['./register-form.component.css']
})
export class RegisterFormComponent implements OnInit {
  forms: any = {};
  users: User[] = [];
  mockUsers = USERS;

  constructor(
    private router: Router,
    private userAccounts: UserAccountService
  ) { }

  ngOnInit(): void {
    this.getUsers();
  }

  getUsers(): void {
    this.userAccounts.getUsers().subscribe((users) => (this.users = users));
  }

  onSubmit() {
    this.mockUsers.push({
      id: this.users.length + 1,
      firstName: this.forms.firstName,
      lastName: this.forms.lastName,
      company: this.forms.company,
      city: this.forms.city,
      country: this.forms.country,
      email: this.forms.email,
      password: this.forms.password,
      imageProfile: '../assets/img/user/default.png',
    });
    console.log(this.users);

    this.router.navigate(['/register-confirm']);
  }

}
