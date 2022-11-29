package com.lithan.assignmenttwo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.assignmenttwo.entity.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, Integer>{

}
