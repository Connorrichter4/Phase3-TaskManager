package com.hcl.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.entities.Task;
import com.hcl.repositories.TaskRepository;

@Service
public class TaskService {

    @Autowired
    private TaskRepository taskRepository;

    public Iterable<Task> GetAllTasks()
    {
        return taskRepository.findAll();
    }

    public Task GetTaskById(Integer id) {
        return taskRepository.findById(id).get();
    }

    public Task AddTask(Task task) {
        return taskRepository.save(task);
    }

    public void DeleteTask(Task task) {
        taskRepository.delete(task);
    }


}
