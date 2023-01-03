package com.lithan.abccars.service;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.context.SpringBootTest;

import com.lithan.abccars.entity.Cars;
import com.lithan.abccars.entity.Users;
import com.lithan.abccars.repository.CarRepo;
import com.lithan.abccars.repository.UserRepo;

@ExtendWith(MockitoExtension.class)
@SpringBootTest
class CarServiceTest {
	
	@Mock
	UserRepo userrepo;
	
	@Mock
	CarRepo carrepo;
	
	@InjectMocks
	CarService carservice;

	@Test
	void testListAllCars() {
		List<Cars> cars = carservice.listAllCars();
		
		assertNotNull(cars);
	}

	@Test
	void testAddCar() {
		//Optional<Users> user = Optional.of(new Users());
		//user.get().setId(5l);
		//when(userrepo.findById(user.get().getId())).thenReturn(user);
		//userrepo.findById(user.get().getId());
		
		Optional<Users> user = userrepo.findById(5l);
		
		if(user.isPresent()) {
			Cars car = new Cars("2018", "Civic R", "Honda", new BigDecimal(20000), user.get());			
			carrepo.save(car);
			verify(carrepo).save(any(Cars.class));
		}
		
		//Cars car = new Cars("2018", "Civic R", "Honda", new BigDecimal(2000), user.get());
		//when(carrepo.save(car)).thenReturn(car);
		//carservice.addCar(car);
	}

	@Test
	void testGetCarById() {
		Optional<Cars> car = carrepo.findById(5l);
		if(car.isPresent()) {
			assertNotNull(car);
		}
	}

	@Test
	void testEditCar() {
		Optional<Cars> car = Optional.of(new Cars());
		car.get().setId(5l);
		car.get().setModel("Rush");
		
		when(carrepo.findById(car.get().getId())).thenReturn(car);
		carservice.editCar(car.get());
		
		verify(carrepo).save(any(Cars.class));
		assertEquals("Rush", car.get().getModel());
	}

	@Test
	void testInactiveCar() {
		Optional<Cars> car = Optional.of(new Cars());
		car.get().setId(5l);
		car.get().setModel("Rush");
		
		when(carrepo.findById(car.get().getId())).thenReturn(car);
		
		if(car.isPresent()) {
			carservice.inactiveCar(car.get().getId());
			assertEquals("Rush", car.get().getModel());
		}
		
	}

	@Test
	void testDeleteCar() {
		long carid = 5l;
		carservice.deleteCar(carid);
		
		verify(carrepo, times(1)).deleteById(carid);
	}

	@Test
	void testSearchByParam() {
		List<Cars> cars = carservice.searchByParam("Honda");
		
		assertNotNull(cars);
	}

	@Test
	void testSearchByPrice() {
		List<Cars> cars = carservice.searchByPrice(new BigDecimal(1000), new BigDecimal(3000));
		assertNotNull(cars);
	}

	@Test
	void testListCarsUser() {
		Optional<Users> user = userrepo.findById(5l);
		
		if(user.isPresent()) {
			List<Cars> cars = carservice.listCarsUser(user.get());
			assertNotNull(cars);
		}
	}

}
