package com.lithan.xyzcars.model;

import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.lithan.xyzcars.entity.Car;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class CarDto {

  private int idCar;

  private String make;

  private String model;

  @Size(min = 4, max = 4, message = "Year is not proper. Use 4 digits number")
  private String year;

  @Positive(message = "Price can't below 0 or Negative number")
  private int price;

  private int idUser;

  public CarDto(Car car) {
    this.idCar = car.getIdCar();
    this.make = car.getMake();
    this.model = car.getModel();
    this.price = car.getPrice();
  }

}
