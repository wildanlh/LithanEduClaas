import { Component, OnInit } from '@angular/core';
import { CARBRANDS } from '../car-brand';


@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.css']
})
export class WelcomeComponent implements OnInit {
  carbrand = CARBRANDS;

  constructor() { }

  ngOnInit(): void {
  }

}
