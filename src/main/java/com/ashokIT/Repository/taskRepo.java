package com.ashokIT.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ashokIT.Entity.Task;

public interface taskRepo extends JpaRepository<Task, Integer>{
//	public abstract void save(String task);
}
