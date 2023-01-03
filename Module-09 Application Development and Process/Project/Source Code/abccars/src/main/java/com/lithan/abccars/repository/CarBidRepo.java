package com.lithan.abccars.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lithan.abccars.entity.CarBidding;
import com.lithan.abccars.entity.Cars;

@Repository
public interface CarBidRepo extends JpaRepository<CarBidding, Long>{
	
	@Query(value = "SELECT b FROM CarBidding b WHERE b.car IN :carid")
	public List<CarBidding> findByCarId(@Param("carid") Cars car);

}
