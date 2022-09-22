import { Component, OnInit } from '@angular/core';
import { User } from "src/app/User";
import { UserAccountService } from 'src/app/user-account.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css'],
})
export class SearchComponent implements OnInit {
  userData: User[] = [];
  filterText: string = '';

  constructor(private userService: UserAccountService) { }

  ngOnInit(): void {
    this.getUsers();
  }

  getUsers(): void {
    this.userService.getUsers().subscribe((users) => (this.userData = users));
  }

}
