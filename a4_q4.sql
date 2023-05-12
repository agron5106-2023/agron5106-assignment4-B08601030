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
;
#JOIN TimeSlot ON Course.TimeSlotOneId =TimeSlot.TimeSlotOneId

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


