package com.ashokIT.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Task {
	@Id
	@GeneratedValue
	private int taskId;
	private String task;
	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}


	@Override
	public String toString() {
		return "Task [taskId=" + taskId + ", task=" + task + "]";
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}
}
