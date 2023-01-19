package com.lithan.xyzcars.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.lithan.xyzcars.entity.Car;

public interface CarRepository extends JpaRepository<Car, Integer> {
  @Query(value = "SELECT * FROM car "
      + "WHERE make LIKE '%' :keyword '%' "
      + "OR model LIKE '%' :keyword '%' "
      + "OR year LIKE '%' :keyword '%' ", nativeQuery = true)
  List<Car> searchCarByKeyword(@Param("keyword") String keyword);

  @Query(value = "SELECT * FROM car "
      + "WHERE price >= :min AND price <= :max", nativeQuery = true)
  List<Car> searchCarByPriceRange(@Param("min") int min, @Param("max") int max);
}
