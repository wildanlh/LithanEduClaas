package com.lithan.xyzcars.service;

import java.util.List;

import com.lithan.xyzcars.entity.Car;
import com.lithan.xyzcars.model.CarDto;

public interface CarService {
	public List<Car> listCar() throws Exception;

	public Car getCarById(int idCar) throws Exception;

	public Car saveCarPost(CarDto carDto) throws Exception;

	public List<Car> searchByKeyword(String keyword) throws Exception;

	public List<Car> searchByPriceRange(int min, int max) throws Exception;
}
