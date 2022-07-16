import { Component, OnInit } from '@angular/core';
import { User } from 'src/app/User';
import { UserAccountService } from 'src/app/user-account.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  userProfilePublic: User | any;
  loggedIn = this.userService.loggedIn;

  constructor(private userService: UserAccountService) { }

  ngOnInit(): void {
    this.getUser();
  }

  logout() {
    this.userService.loggedIn = false;
  }

  getUser(): void {
    const id = this.userService.userLoginID;
    this.userService
      .getUserID(id)
      .subscribe((id) => (this.userProfilePublic = id));
  }

}
