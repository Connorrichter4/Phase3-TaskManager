package com.hcl.repositories;

import org.springframework.data.repository.CrudRepository;
import com.hcl.entities.Task;

public interface TaskRepository extends CrudRepository<Task, Integer>{

}
