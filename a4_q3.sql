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
  CourseCatalogId INT NOT NULL,
  PRIMARY KEY (StudentCourseId),
  KEY FK_StudentId (StudentId),
  KEY FK_CourseId (CourseCatalogId),
  CONSTRAINT FK_StudentId FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
  CONSTRAINT FK_CourseCatalogId1 FOREIGN KEY (CourseCatalogId) REFERENCES CourseCatalog (CourseCatalogId)
);
DROP TABLE StudentCourse;
DESCRIBE StudentCourse;

-- Populate StudentCourse table
INSERT INTO StudentCourse(StudentId,CourseCatalogId)
VALUES
(1,207),
(1,199),
(1,173),
(1,222),
(1,245),
(2,191),
(2,171),
(2,182),
(2,318),
(2,220),
(3,190),
(3,171),
(3,200),
(3,289),
(3,211),
(4,250),
(4,171),
(4,183),
(4,318),
(4,222),
(4,233),
(5,173),
(5,193),
(5,309),
(5,262),
(5,275)

SELECT * FROM StudentCourse;