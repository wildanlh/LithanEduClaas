import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarOnSaleComponent } from './car-on-sale.component';

describe('CarOnSaleComponent', () => {
  let component: CarOnSaleComponent;
  let fixture: ComponentFixture<CarOnSaleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CarOnSaleComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CarOnSaleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
