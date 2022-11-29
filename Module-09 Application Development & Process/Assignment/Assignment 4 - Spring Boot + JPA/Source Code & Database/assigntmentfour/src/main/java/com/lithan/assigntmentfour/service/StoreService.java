package com.lithan.assigntmentfour.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.assigntmentfour.entity.Store;

@Service
@Transactional
public class StoreService {
	@Autowired
	StoreRepository repo;
	
	public void save(Store store) {
		repo.save(store);
	}
	
	public List<Store> listAll(){
		return repo.findAll();
	}
	
	public void remove(Store store) {
		repo.delete(store);
	}
	
	public void removeAll() {
		repo.deleteAll();
	}
	
	public Store findById(Long id) {
		return repo.findById(id).get();
	}
}
