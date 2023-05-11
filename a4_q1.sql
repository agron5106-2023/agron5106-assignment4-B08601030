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


INSERT INTO College (CollegeName, Established)
VALUES
  ('College of Liberal Arts', 1928),
  ('College of Science', 1928),
  ('College of Social Sciences', 1928),
  ('College of Law', 1948),
  ('College of Medicine', 1949),
  ('College of Engineering', 1943),
  ('College of Bioresources and Agriculture', 1987),
  ('College of Management', 1967),
  ('College of Public Health', 1994),
  ('College of Electrical Engineering and Computer Science', 1943),
  ('College of Life Science', 1928),
  ('College of Education', 1949),
  ('College of Sports and Recreation', 1961),
  ('College of Public Affairs', 2000),
  ('College of Humanities', 1957),
  ('College of Pharmacy', 1961),
  ('College of Indigenous Studies', 2010),
  ('Academic Writing Education Center', 2006),
  ('Career Center', 1988),
  ('Foreign Language Teaching and Resource Center', 1989);

SELECT * FROM College;