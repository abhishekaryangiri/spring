package com.taskmanager.task_management_backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.taskmanager.task_management_backend.model.Task;
import com.taskmanager.task_management_backend.services.TaskService;

import java.util.List;

@RestController
@RequestMapping("/api/tasks")
public class TaskController {
    @Autowired
    private TaskService taskService;

    @PostMapping
    public Task createTask(@RequestBody Task task) {
        return taskService.createTask(task);
    }

    @GetMapping
    public List<Task> getTasks(@RequestParam String userId) {
        return taskService.getTasks(userId);
    }

    @PutMapping("/{taskId}")
    public Task updateTask(@PathVariable String taskId, @RequestBody Task updatedTask) {
        return taskService.updateTask(taskId, updatedTask);
    }

    @DeleteMapping("/{taskId}")
    public void deleteTask(@PathVariable String taskId) {
        taskService.deleteTask(taskId);
    }
}
