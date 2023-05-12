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
WHERE Student.StudentId=2;

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

