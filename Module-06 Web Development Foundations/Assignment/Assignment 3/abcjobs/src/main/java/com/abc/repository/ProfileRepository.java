package com.abc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.bean.ProfileBean;

@Repository
public interface ProfileRepository extends JpaRepository<ProfileBean, Integer>{

}
