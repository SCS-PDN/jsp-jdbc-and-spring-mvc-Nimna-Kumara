CREATE DATABASE university_db;

USE university_db;

CREATE TABLE students (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(100)
);

CREATE TABLE courses (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  instructor VARCHAR(100),
  credits INT
);

CREATE TABLE registrations (
  reg_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  course_id INT,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(student_id) REFERENCES students(student_id),
  FOREIGN KEY(course_id) REFERENCES courses(course_id)
);


INSERT INTO students (name, email, password) VALUES
('Student1', 'std1@gmail.com', '1234std1'),
('Student2', 'std2@gmail.com', '1234std2');

INSERT INTO courses (name, instructor, credits) VALUES
('CSC3012', 'Dr. A', 2),
('CSC3023', 'Dr. B', 3),
('CSC3031', 'Dr. C', 1);
