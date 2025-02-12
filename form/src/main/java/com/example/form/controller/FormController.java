package com.example.form.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.form.model.Form;
import com.example.form.service.FormService;

@Controller
public class FormController {

    @Autowired
    private FormService formService;

    // Inject the upload directory path from application.properties
    @Value("${file.upload-dir}")
    private String uploadDir;

    @GetMapping("/")
    public String showForm() {
        return "form";
    }

    @PostMapping("/submitForm")
    public String submitForm(Form form, @RequestParam("image") MultipartFile image, Model model) throws IOException {
        // Ensure the directory exists
        File directory = new File(uploadDir);
        if (!directory.exists()) {
            directory.mkdirs();  // Create directory if it doesn't exist
        }

        // Generate the image path and save it
        String imagePath = uploadDir + File.separator + image.getOriginalFilename();
        image.transferTo(new File(imagePath));

        // Set the image URL to be used in the form (accessible through the static folder)
        form.setImageUrl("/images/" + image.getOriginalFilename());

        // Save the form data to MongoDB
        formService.saveForm(form);

        model.addAttribute("message", "Form submitted successfully!");
        return "form";
    }
}
