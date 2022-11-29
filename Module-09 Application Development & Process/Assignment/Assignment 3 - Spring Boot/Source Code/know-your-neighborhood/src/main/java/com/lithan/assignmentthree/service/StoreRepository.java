package com.lithan.assignmentthree.service;

import java.util.List;

import com.lithan.assignmentthree.entity.Store;

public interface StoreRepository {
    public void save(Store store);
	
	public List<Store> listAll();
}
