import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Car } from '../car';
import { CarService } from '../car.service';

@Component({
  selector: 'app-car-detail',
  templateUrl: './car-detail.component.html',
  styleUrls: ['./car-detail.component.css']
})
export class CarDetailComponent implements OnInit {

  car: Car | undefined;

  constructor(
    private route: ActivatedRoute,
    private carsService: CarService
  ) { }

  ngOnInit(): void {
    this.getCar();
  }

  getCar(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.carsService.getCar(id).subscribe((car) => (this.car = car));
  }

}