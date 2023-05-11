-- Select YOUR own database for assignment 4;

USE a4_courses_b08601030;
SHOW TABLES;

DESCRIBE College;
DESCRIBE Course;
DESCRIBE CourseCatalog;
DESCRIBE Day;
DESCRIBE Gender;
DESCRIBE Period;
DESCRIBE Student;
DESCRIBE TimeSlot;
-- Populate CourseCatalog table
LOAD DATA INFILE 'C:/Users/Hp/Documents/111-2/Bioinformation/a4_table1.csv'
INTO TABLE CourseCatalog
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
IGNORE 1 LINES 
(CourseNumber) 
SET CourseNumber = Course_number;


