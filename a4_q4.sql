-- Select YOUR own database for assignment 4;
-- USE A4_courses_YOUR_NTU_ID;
SELECT 
NickName,
CourseNumber,
Coursename,
College.CollegeName,
TimeSlotOneId
FROM StudentCourse 
JOIN Student 
  ON StudentCourse.StudentId =Student.StudentId 
JOIN CourseCatalog
  ON StudentCourse.CourseCatalogId =CourseCatalog.CourseCatalogId
	JOIN Course
	  ON CourseCatalog.CourseCatalogId =Course.CourseCatalogId 
	JOIN College
	  ON CourseCatalog.CollegeId =College.CollegeId
WHERE StudentId=2;

SELECT 
	NickName,
	Gender.Gender,
	CollegeName
FROM StudentCourse
JOIN Student 
  ON StudentCourse.StudentId =Student.StudentId 
	JOIN College AS StudentCollege 
      ON Student.CollegeId = StudentCollege.CollegeId
	JOIN Gender
	  ON Student.GenderId =Gender.GenderID ;

SELECT * 
FROM CourseCatalog
JOIN StudentCourse
  ON CourseCatalog.CourseCatalogId =StudentCourse.CourseCatalogId 
	JOIN Student
	  ON StudentCourse.StudentId =Student.StudentId 
JOIN Course
  ON CourseCatalog.CourseCatalogId =Course.CourseCatalogId 
	JOIN TimeSlot
	  ON Course.TimeSlotOneId =TimeSlot.TimeSlotId 

SELECT 
	IsCompulsory,
	CourseNumber,
	CourseName,
	Day.DayName,
	PeriodStart,
	PeriodEnd
FROM TimeSlot 
JOIN Course 
ON TimeSlot.TimeSlotId = Course.TimeSlotOneId 
	JOIN CourseCatalog 
	  ON Course.CourseCatalogId = CourseCatalog.CourseCatalogId 
JOIN Day ON TimeSlot.DayId = Day.DayId
JOIN Period ON TimeSlot.PeriodId = Period.PeriodId
WHERE CourseNumber in('AGRON5002','AGRON5002','AC2003','AGRON2013','AGRON5005','AGRON7033');

SELECT 
  Student.NickName,
  CourseCatalog.CourseNumber,
  CourseCatalog.CourseName,
  College.CollegeName
FROM StudentCourse 
JOIN Student ON StudentCourse.StudentId = Student.StudentId 
JOIN CourseCatalog ON StudentCourse.CourseCatalogId = CourseCatalog.CourseCatalogId
JOIN College ON CourseCatalog.CollegeId = College.CollegeId
WHERE StudentCourse.CourseCatalogId IN (
  SELECT CourseCatalogId
  FROM StudentCourse
  GROUP BY CourseCatalogId
  HAVING COUNT(*) > 1
)
GROUP BY Student.StudentId;

SELECT 
  s1.NickName AS Student1,
  s2.NickName AS Student2,
  COUNT(*) AS CommonCourseCount
FROM StudentCourse sc1
JOIN Student s1 ON sc1.StudentId = s1.StudentId
JOIN StudentCourse sc2 ON sc1.CourseCatalogId = sc2.CourseCatalogId
JOIN Student s2 ON sc2.StudentId = s2.StudentId
WHERE s1.StudentId < s2.StudentId
GROUP BY s1.StudentId, s2.StudentId;

SELECT 
NickName,
CourseNumber,
Coursename,
College.CollegeName,
TimeSlotOneId
FROM StudentCourse 
JOIN Student 
  ON StudentCourse.StudentId =Student.StudentId 
JOIN CourseCatalog
  ON StudentCourse.CourseCatalogId =CourseCatalog.CourseCatalogId
	JOIN Course
	  ON CourseCatalog.CourseCatalogId =Course.CourseCatalogId 
	JOIN College
	  ON CourseCatalog.CollegeId =College.CollegeId
WHERE CourseName='Crop Growth and Development' OR CourseName='Soil Science'
ORDER BY CourseName;