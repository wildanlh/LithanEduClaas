package com.lithan.assignmentthree.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lithan.assignmentthree.entity.Store;

@Service("StoreRepository")
public class StoreService implements StoreRepository{
	List<Store> stores = new ArrayList<Store>();
	
	@Override
	public void save(Store store) {
		stores.add(store);
	}
	
	@Override
	public List<Store> listAll() throws NullPointerException{
		return stores;
	}
}
