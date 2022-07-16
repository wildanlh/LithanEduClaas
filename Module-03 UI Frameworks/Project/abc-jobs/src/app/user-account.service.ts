import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { USERS } from './mock-user';
import { User } from './User';

@Injectable({
  providedIn: 'root',
})
export class UserAccountService {
  loggedIn = false;
  userLoginID: number = 0;

  constructor() { }

  getUsers(): Observable<User[]> {
    const users = of(USERS);
    return users;
  }

  getUserID(id: number): Observable<User> {
    const ID = USERS.find((ID) => ID.id === id)!;
    return of(ID);
  }

  getUserEmail(email: string): Observable<User> {
    const userEmail = USERS.find((user) => user.email === email)!;
    return of(userEmail);
  }
}
