package com.example.form.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.form.model.Form;
import com.example.form.repository.FormRepository;

@Service
public class FormService {
    
    @Autowired
    private FormRepository formRepository;  // Autowiring the FormRepository

    public Form saveForm(Form form) {
        return formRepository.save(form);
    }
}
