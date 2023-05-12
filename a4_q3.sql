-- Select YOUR own database for assignment 4;
-- USE A4_courses_YOUR_NTU_ID;
DESCRIBE Student;
DESCRIBE Gender;
SELECT * FROM Student;
SELECT * FROM Gender;

INSERT INTO Student (NickName, GenderId, CollegeId)
VALUES
  ('Maria', 1,101),
  ('Kathy', 3, 105),
  ('John', 2, 103),
  ('Tom', 4, 102);

 ALTER TABLE Student CHANGE COLUMN StuedentId StudentId INT NOT NULL AUTO_INCREMENT;

-- CREATE StudentCourse table
CREATE TABLE StudentCourse (
  StudentCourseId INT NOT NULL AUTO_INCREMENT,
  StudentId INT NOT NULL,
  CourseId INT NOT NULL,
  PRIMARY KEY (StudentCourseId),
  KEY FK_StudentId (StudentId),
  KEY FK_CourseId (CourseId),
  CONSTRAINT FK_StudentId FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
  CONSTRAINT FK_CourseId FOREIGN KEY (CourseId) REFERENCES Course (CourseId)
);
DESCRIBE StudentCourse;

-- Populate StudentCourse table


