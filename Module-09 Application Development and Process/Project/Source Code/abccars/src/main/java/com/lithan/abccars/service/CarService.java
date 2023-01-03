package com.lithan.abccars.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lithan.abccars.entity.Cars;
import com.lithan.abccars.entity.Users;
import com.lithan.abccars.repository.CarRepo;
import com.lithan.abccars.repository.UserRepo;

@Service
@Transactional
public class CarService {
	
	@Autowired
	private CarRepo carRepo;
	
	@Autowired
	private UserRepo userRepo;
	
	public List<Cars> listAllCars() {
		return carRepo.findAll();
	}
	
	public void addCar (Cars car) {
		String uname = "";
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			uname = ((UserDetails) principal).getUsername();
		} else {
			uname = principal.toString();
		}
		
		Users user = userRepo.findByUserName(uname);
		car.setUser(user);
		car.setStatus("active");
		carRepo.save(car);
		
	}
	
	public Cars getCarById(Long id) {
		return carRepo.findById(id).get();
	}
	
	public void editCar(Cars car) {
		Cars newcar	= carRepo.findById(car.getId()).get();
		newcar.setMakeYear(car.getMakeYear());
		newcar.setMake(car.getMake());
		newcar.setModel(car.getModel());
		newcar.setPrice(car.getPrice());
		newcar.setStatus(car.getStatus());
		carRepo.save(newcar);
	}
	
	public void inactiveCar(Long id) {
		Cars newcar	= carRepo.findById(id).get();
		newcar.setStatus("inactive");
		carRepo.save(newcar);
	}
	
	public void activeCar(Long id) {
		Cars newcar	= carRepo.findById(id).get();
		newcar.setStatus("active");
		carRepo.save(newcar);
	}
	
	public void deleteCar(Long id) {
		carRepo.deleteById(id);
	}
	
	public List<Cars> searchByParam(String key){
		return carRepo.searchByParam(key);
	}
	
	public List<Cars> searchByPrice(BigDecimal min, BigDecimal max){
		return carRepo.findByPriceBetween(min, max);
	}
	
	public List<Cars> listCarsUser(Users user){
		return carRepo.findByUser(user);
	}

}