package com.taskmanager.task_management_backend.model;

import java.util.List;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface TaskRepository extends MongoRepository<Task, String> {
    List<Task> findByUserId(String userId);
}