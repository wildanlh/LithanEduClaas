import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { User } from 'src/app/User';
import { UserAccountService } from 'src/app/user-account.service';

@Component({
  selector: 'app-profile-edit',
  templateUrl: './profile-edit.component.html',
  styleUrls: ['./profile-edit.component.css']
})
export class ProfileEditComponent implements OnInit {

  userProfilePublic: User | any;

  constructor(
    private route: ActivatedRoute,
    private userService: UserAccountService,
    private router: Router
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

  onSubmit() {
    this.router.navigate([
      `/profile/${this.route.snapshot.paramMap.get('id')}`,
    ]);
  }

}
