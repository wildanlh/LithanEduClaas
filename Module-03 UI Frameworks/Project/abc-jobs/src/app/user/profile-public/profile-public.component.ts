import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { User } from 'src/app/User';
import { UserAccountService } from 'src/app/user-account.service';

@Component({
  selector: 'app-profile-public',
  templateUrl: './profile-public.component.html',
  styleUrls: ['./profile-public.component.css']
})
export class ProfilePublicComponent implements OnInit {
  userProfilePublic: User | any;

  constructor(
    private route: ActivatedRoute,
    private userService: UserAccountService
  ) { }

  ngOnInit(): void {
    this.getUser();
  }

  getUser(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.userService
      .getUserID(id)
      .subscribe((id) => (this.userProfilePublic = id));
  }

}
