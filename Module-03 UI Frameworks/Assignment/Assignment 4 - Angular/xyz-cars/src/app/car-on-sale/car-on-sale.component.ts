import { Component, OnInit } from '@angular/core';
import { Car } from '../car';
import { CarService } from '../car.service';

@Component({
  selector: 'app-car-on-sale',
  templateUrl: './car-on-sale.component.html',
  styleUrls: ['./car-on-sale.component.css']
})
export class CarOnSaleComponent implements OnInit {

  cars: Car[] = [];

  constructor(private carServices: CarService) { }

  ngOnInit(): void {
    this.getCars();
  }

  getCars(): void {
    this.carServices.getCars().subscribe(cars => this.cars = cars);
  }


}
