import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { User } from 'src/app/User';
import { UserAccountService } from 'src/app/user-account.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  userProfilePublic: User | any;
  closeUser: User[] = [];
  selectUser: User[] = [];
  privateProfile = false;

  constructor(
    private route: ActivatedRoute,
    private userService: UserAccountService
  ) { }

  ngOnInit(): void {
    this.getUser();
    this.getCloseUser();
    this.getSelectUser();
  }

  getSelectUser() {
    const selectUser = this.closeUser.filter(
      (user) => user.email != this.userProfilePublic.email
    );
    this.selectUser = selectUser;
  }
  getCloseUser() {
    this.userService.getUsers().subscribe((users) => (this.closeUser = users));
  }

  getUser(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.userService
      .getUserID(id)
      .subscribe((id) => (this.userProfilePublic = id));
  }

}

