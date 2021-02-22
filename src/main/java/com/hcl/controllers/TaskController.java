package com.hcl.controllers;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.entities.Task;
import com.hcl.repositories.TaskRepository;
import com.hcl.services.TaskService;
import com.hcl.services.UserService;

@Controller
public class TaskController {
	
	private Logger logger = LoggerFactory.getLogger(TaskController.class);
	
	@Autowired
	TaskService taskService;
	
	@Autowired
	UserService userService;
	
	@GetMapping({"/", "/display-tasks"})
	public String showAllTasks(ModelMap model, Principal principal) {
		logger.info(principal.getName());
		Iterable<Task> tasks = taskService.GetAllTasks();
		model.put("tasks", tasks);
		model.put("user", userService.getUserByName(principal.getName()));
		return "display-tasks";
	}
	
	@GetMapping("/create-task")
	public String newTaskForm(ModelMap model) {
		return "create-task";
	}
	
	@PostMapping("/create-task")
	public RedirectView createNewTask(ModelMap model, Principal principal, Task task) {
		task.setUser(userService.getUserByName(principal.getName()));
		logger.info(task.toString());
		taskService.AddTask(task);
		return new RedirectView("display-tasks");
	}
	
	@GetMapping("/edit-task/{id}")
	public String updateTaskForm(ModelMap model, @PathVariable("id") Integer id) {
		Task task = taskService.GetTaskById(id);
		logger.info(task.toString());
		model.put("task", task);
		return "update-task";
	}
	
	@PostMapping("/edit-task/{id}")
	public RedirectView updateTask(Principal principal, Task task, @PathVariable("id") Integer id) {
		
		
		return new RedirectView("display-tasks");
	}
	
}
