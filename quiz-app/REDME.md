
---
![api-testing](src/main/resources/static/images/api-testing.gif)




# QUIZ-APP: API Testing on Postman


---

### 1. **Start Quiz**

**Endpoint:** `POST /api/quiz/start/{userId}`

** Request:**  
```http
POST http://localhost:8080/api/quiz/start/7
```

**Output:**  
```json
"Quiz session started for user: 7"
```

This starts a new quiz session for the user with the given `userId`. Replace `7` with the appropriate user ID.

---

### 2. **Fetch Question**

**Endpoint:** `GET /api/quiz/question`

** Request:**  
```http
GET http://localhost:8080/api/quiz/question
```

**Output:**  
```json
{
    "id": 1,
    "question": "What is the default value of a boolean variable in Java?",
    "option1": "true",
    "option2": "false",
    "option3": "0",
    "option4": "1",
    "correctOption": 2
}
```

This endpoint retrieves a random question from the quiz. The options and the correct answer are returned.

---

### 3. **Process Question**

**Endpoint:** `GET /api/quiz/process?questionId={questionId}`

** Request:**  
```http
GET http://localhost:8080/api/quiz/process?questionId=7
```

**Output:**  
```json
"Question processed: 7"
```

This endpoint processes the question by its `questionId`. Replace `7` with the question ID you want to process.

---

### 4. **Submit Answer**

**Endpoint:** `POST /api/quiz/submit/{userId}`

** Request:**  
```http
POST http://localhost:8080/api/quiz/submit/7?questionId=1&selectedOption=2
```

**Output (Correct Answer):**  
```json
"Correct answer!"
```

**Output (Incorrect Answer):**  
```json
"Wrong answer!"
```

This endpoint submits the selected answer for a given `userId` and `questionId`. It also checks if the selected option is correct or not.

---

### 5. **Check Result**

**Endpoint:** `GET /api/quiz/result/{userId}`

** Request (for userId = 7):**  
```http
GET http://localhost:8080/api/quiz/result/7
```

**Output (for userId = 7):**  
```json
{
    "Total Questions": 1,
    "Correct Answers": 1,
    "Incorrect Answers": 0
}
```

This endpoint provides the result of the quiz for a specific user by their `userId`. It returns the total number of questions, the correct answers, and the incorrect answers.

---

**Example Request (for userId = 1):**  
```http
GET http://localhost:8080/api/quiz/result/1
```

***Output (for userId = 1):**  
```json
{
    "Total Questions": 7,
    "Correct Answers": 4,
    "Incorrect Answers": 3
}
```
## Tech Stack Used to Build This Quiz App API

- **Spring Boot**: Framework for building the backend API.
- **Java**:  Core programming language used for backend development
- **MySQL**: Relational database for storing user data and quiz information.
- **Hibernate**: ORM for interacting with the database.
- **GitHub**: Version control and repository management.
- **Maven**: Build automation tool for dependency management and project builds.
- **Apache Tomcat**: Web server for deploying the Spring Boot application.
- **Spring Initializr**: Tool for generating the Spring Boot project structure.
- **REST API**: Architecture style for building the API endpoints.

---



# How to Clone, Run, and Test the Spring Boot App

## 1. Clone the Repository
1. Install Git: [git-scm.com](https://git-scm.com/).
2. Clone the repo:
   ```bash
   git clone <repository_url>
   cd <repository_folder>
   ```

## 2. Run the Application
1. Ensure Java (JDK 11+) and Maven are installed.
2. Build the project:
   ```bash
   mvn clean install
   ```
3. Run the app:
   ```bash
   mvn spring-boot:run
   ```
   Or:
   ```bash
   java -jar target/<app_name>.jar
   ```

## 3. Test with Postman
1. Install Postman: [postman.com](https://www.postman.com/).
2. Use `http://localhost:8080` as the base URL.
3. Test endpoints:
   - **GET**: Enter URL and click **Send**.
   - **POST**: Add JSON payload in the **Body** tab under `raw > JSON`.
   - **PUT/DELETE**: Follow similar steps with respective HTTP methods.

4. Add headers if required (e.g., `Authorization` for tokens).

## 4. Optional
- Ensure the database is running if required.
- Update `application.properties` with database credentials or configs.

```

