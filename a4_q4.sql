-- Select YOUR own database for assignment 4;
-- USE A4_courses_YOUR_NTU_ID;
SELECT 
NickName,
CourseNumber,
Coursename
FROM StudentCourse 
JOIN Student 
ON StudentCourse.StudentId =Student.StudentId 
JOIN CourseCatalog
ON StudentCourse.CourseCatalogId =CourseCatalog.CourseCatalogId; 



