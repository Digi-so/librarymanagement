-- Library Management System SQL Schema
-- Author: [john maitai]
-- Description: SQL script for creating and populating a Library Management database

-- creating database
CREATE DATABASEsamplelm; 

-- Create Genres table
CREATE TABLE Genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Create Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT
);

-- Create Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    genre_id INT NOT NULL,
    published_year YEAR,
    isbn VARCHAR(20) UNIQUE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- Create Members table
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    membership_date DATE NOT NULL
);

-- Create Loans table
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- Insert sample data into Genres
INSERT INTO Genres (name) VALUES
('Fiction'), ('Science'), ('History'), ('Fantasy');

-- Insert sample data into Authors
INSERT INTO Authors (name, bio) VALUES
('George Orwell', 'Author of 1984 and Animal Farm'),
('Isaac Asimov', 'Known for science fiction works'),
('J.K. Rowling', 'Harry Potter series'),
('Yuval Noah Harari', 'Historian and author');

-- Insert sample data into Books
INSERT INTO Books (title, author_id, genre_id, published_year, isbn) VALUES
('1984', 1, 1, 1949, '1234567890'),
('Animal Farm', 1, 1, 1945, '1234567891'),
('Foundation', 2, 2, 1951, '1234567892'),
('Harry Potter and the Sorcerer''s Stone', 3, 4, 1997, '1234567893'),
('Sapiens', 4, 3, 2011, '1234567894');

-- Insert sample data into Members
INSERT INTO Members (name, email, membership_date) VALUES
('Alice Smith', 'alice@example.com', '2022-01-15'),
('Bob Johnson', 'bob@example.com', '2022-02-10'),
('Charlie Lee', 'charlie@example.com', '2022-03-05');

-- Insert sample data into Loans
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2023-01-10', '2023-01-20'),
(2, 2, '2023-02-15', NULL),
(3, 3, '2023-03-01', '2023-03-10'),
(4, 1, '2023-04-12', NULL);
