package com.abc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.bean.RegisterBean;

@Repository
public interface RegisterRepository extends JpaRepository<RegisterBean, Integer>{

}
