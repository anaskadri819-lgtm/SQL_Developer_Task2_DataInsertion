-- TASK 2 : DATA INSERTION AND NULL HANDLING

-- 1. Create Table
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    email TEXT UNIQUE,
    city TEXT,
    marks INTEGER DEFAULT 0
);

-- -----------------------------------------------------------
-- 2. INSERT STATEMENTS
-- -----------------------------------------------------------

INSERT INTO Students VALUES (1, 'Aman', 20, 'aman@mail.com', 'Delhi', 85);
INSERT INTO Students (student_id, name, city) VALUES (2, 'Riya', 'Mumbai');
INSERT INTO Students (student_id, name, age, email, city, marks)
VALUES (3, 'Karan', NULL, NULL, 'Pune', 72);
INSERT INTO Students (student_id, name, age, email, city)
VALUES (4, 'Neha', 19, 'neha@mail.com', 'Bangalore');
INSERT INTO Students (student_id, name, age, city, marks) VALUES
(5, 'Tara', 21, 'Goa', 77),
(6, 'Imran', NULL, 'Delhi', 88);

-- -----------------------------------------------------------
-- 3. UPDATE STATEMENTS
-- -----------------------------------------------------------

UPDATE Students SET marks = 90 WHERE student_id = 2;
UPDATE Students SET city = 'Unknown' WHERE city IS NULL;
UPDATE Students SET email = NULL WHERE student_id = 5;

-- -----------------------------------------------------------
-- 4. DELETE STATEMENTS
-- -----------------------------------------------------------

DELETE FROM Students WHERE student_id = 6;
DELETE FROM Students WHERE email IS NULL;

-- -----------------------------------------------------------
-- 5. INSERT using SELECT
INSERT INTO Students (student_id, name, age, email, city, marks)
SELECT 10, 'Backup_Student', age, NULL, city, marks
FROM Students WHERE student_id = 1;

-- -----------------------------------------------------------
-- 6. VIEW CLEAN DATA
SELECT * FROM Students;
