package com.ashokIT.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ashokIT.Entity.Registration;


public interface userRepo extends JpaRepository<Registration, Integer>{
	public Registration findByEmailAndPassword(String email,String password);
}
