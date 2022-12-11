package com.lithan.assignmentfive.service;

import java.util.List;

import com.lithan.assignmentfive.entity.Store;
import com.lithan.assignmentfive.exception.StoreNotFoundException;

public interface StoreService {

  public void addStore(Store store);

  public Store findById(int id);

  public Store editStore(Store store);

  public void deleteStore(int id);

  public List<Store> listStore();

  public List<Store> search(String keyword) throws StoreNotFoundException;

}

