package com.lithan.assigntmentfour.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.assigntmentfour.entity.Store;

public interface StoreRepository extends JpaRepository<Store, Long> {

}
