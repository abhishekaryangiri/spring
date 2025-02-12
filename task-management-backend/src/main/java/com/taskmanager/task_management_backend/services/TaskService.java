package com.taskmanager.task_management_backend.services;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.taskmanager.task_management_backend.model.Task;
import com.taskmanager.task_management_backend.model.TaskRepository;

@Service
public class TaskService {
    @Autowired
    private TaskRepository taskRepository;

    public Task createTask(Task task) {
        return taskRepository.save(task);
    }

    public List<Task> getTasks(String userId) {
        return taskRepository.findByUserId(userId);
    }

    public Task updateTask(String taskId, Task updatedTask) {
        Task task = taskRepository.findById(taskId).orElseThrow(() -> new RuntimeException("Task not found"));
        task.setTitle(updatedTask.getTitle());
        task.setPriority(updatedTask.getPriority());
        task.setStatus(updatedTask.getStatus());
        if (updatedTask.getStatus().equals("finished")) {
            task.setEndTime(LocalDateTime.now());
        }
        return taskRepository.save(task);
    }

    public void deleteTask(String taskId) {
        taskRepository.deleteById(taskId);
    }
}
