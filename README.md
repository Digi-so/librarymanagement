# librarymanagement
# 📚 Library Management System

A full-featured MySQL-based Library Management System with a RESTful CRUD API built using Node.js and Express.

## 🔧 Project Structure

```
library-management/
├── library_management_schema.sql   # SQL script to create and populate the database
├── server.js                       # Node.js Express CRUD API for books
├── package.json                    # Node.js dependencies (after npm init)
└── README.md        
## 🚀 Features

### ✅ Question 1: MySQL Database

* Tables: `Books`, `Authors`, `Genres`, `Members`, `Loans`
* Proper constraints: `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`
* Sample data included in the SQL file

### ✅ Question 2: CRUD API

* Framework: Node.js + Express
* Database: MySQL
* Operations implemented for the `Books` table:

  * `GET /books` — List all books
  * `GET /books/:id` — View a specific book
  * `POST /books` — Add a new book
  * `PUT /books/:id` — Update book details
  * `DELETE /books/:id` — Remove a book

## 💾 Setup Instructions

### 1. MySQL Database

* Create a new MySQL database named `library_db`
* Import the schema:

  ```sql
  SOURCE library_management_schema.sql;
  ```

### 2. Node.js API

* Install dependencies:

  ```bash
  npm install express mysql2
  ```
* Update database credentials in `server.js`
* Run the server:

  ```bash
  node server.js
  ```

### 3. API Testing

* Use tools like [Postman](https://www.postman.com/) or cURL to test endpoints
* Ensure MySQL is running and the schema is imported before testing

## 📊 ER Diagram (Conceptual)

![ERD Screenshot or Link](#) <!-- Replace with image or link if available -->

## 🧑‍💻 Author

* \[john maitai]
* \[johnmaitai73@gmail.com]
