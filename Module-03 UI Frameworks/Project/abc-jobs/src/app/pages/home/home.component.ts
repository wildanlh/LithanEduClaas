import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable, of } from 'rxjs';
import { USERS } from 'src/app/mock-user';
import { User } from 'src/app/User';
import { UserAccountService } from 'src/app/user-account.service';

const COMPANY = [
  {
    logo: '../../../assets/img/company/amazon.png',
    alt: 'Amazon',
  },
  {
    logo: '../../../assets/img/company/google.png',
    alt: 'Google',
  },
  {
    logo: '../../../assets/img/company/intel.png',
    alt: 'Intel',
  },
  {
    logo: '../../../assets/img/company/nvidia.png',
    alt: 'Nvidia',
  },
  {
    logo: '../../../assets/img/company/meta.png',
    alt: 'Meta',
  },
  {
    logo: '../../../assets/img/company/microsoft.png',
    alt: 'Microsoft',
  },
  {
    logo: '../../../assets/img/company/oracle.png',
    alt: 'Oracle',
  },
  {
    logo: '../../../assets/img/company/samsung.png',
    alt: 'Samsung',
  },
  {
    logo: '../../../assets/img/company/tencent.png',
    alt: 'Tencent',
  },
];

const CATEGORY = [
  { category: 'Account and Finance' },
  { category: 'Content Writing' },
  { category: 'Design' },
  { category: 'Development' },
  { category: 'Digital Marketing' },
  { category: 'HR Management' },
  { category: 'UI/UX Design' },
  { category: 'Sales' },
];

const JOBS = [
  {
    logo: '../../../assets/img/logo/google.png',
    jobTitle: 'Back End Developer',
    company: 'Google',
    jobType: 'Full-Time',
  },
  {
    logo: '../../../assets/img/logo/amazon.png',
    jobTitle: 'Fullstack Developer',
    company: 'Amazon',
    jobType: 'Part-Time',
  },
  {
    logo: '../../../assets/img/logo/microsoft.png',
    jobTitle: 'UI Designer',
    company: 'Microsoft',
    jobType: 'Full-Time',
  },
  {
    logo: '../../../assets/img/logo/samsung.png',
    jobTitle: 'Front End Developer',
    company: 'Samsung',
    jobType: 'Full-Time',
  },
  {
    logo: '../../../assets/img/logo/nvidia.png',
    jobTitle: 'Software Engineer',
    company: 'Nvidia',
    jobType: 'Part-Time',
  },
];

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent implements OnInit {

  company = COMPANY;
  category = CATEGORY;
  job = JOBS;

  validEmail = false;
  validPassword = false;
  userInputEmail = '';
  userInputPassword = '';
  emailFounded: User | undefined;
  loggedIn = this.userAccounts.loggedIn;

  constructor(
    private router: Router,
    private userAccounts: UserAccountService
  ) { }

  ngOnInit(): void { }

  findEmail(email: string): Observable<User | undefined> {
    const emailFound = USERS.find((user) => user.email === email);
    this.validEmail = !!emailFound;
    return of(emailFound);
  }

  getFoundedEmail() {
    this.findEmail(this.userInputEmail).subscribe(
      (user) => (this.emailFounded = user)
    );
  }

  validatePassword(password: string) {
    this.getFoundedEmail();
    const passwordFound = this.emailFounded?.password === password;
    this.validPassword = passwordFound;
  }

  onLogin() {
    this.validatePassword(this.userInputPassword);

    if (this.validEmail && this.validPassword) {
      this.userAccounts.loggedIn = true;
      this.userAccounts.userLoginID = this.emailFounded?.id!;
      this.router.navigate([`/profile/${this.emailFounded?.id}`]);
    }
  }

}
