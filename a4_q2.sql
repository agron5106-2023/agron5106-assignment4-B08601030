-- Select YOUR own database for assignment 4;
-- USE A4_courses_YOUR_NTU_ID;

DESCRIBE Course;
SHOW CREATE TABLE Course;
DROP TABLE Course;
CREATE TABLE `Course` (
  `CourseId` int NOT NULL AUTO_INCREMENT,
  `CourseCatalogId` int NOT NULL,
  `TimeSlotOneId` int  NULL,
  PRIMARY KEY (`CourseId`),
  KEY `FK_CourseCatalogId` (`CourseCatalogId`),
  KEY `FK_CourseTimeSlotOne` (`TimeSlotOneId`),
  CONSTRAINT `FK_CourseCatalogId` FOREIGN KEY (`CourseCatalogId`) REFERENCES `CourseCatalog` (`CourseCatalogId`),
  CONSTRAINT `FK_CourseTimeSlotOne` FOREIGN KEY (`TimeSlotOneId`) REFERENCES `TimeSlot` (`TimeSlotId`)
) 

SELECT * FROM Course;

SELECT * FROM TimeSlot 
JOIN Day ON TimeSlot.DayId = Day.DayId
JOIN Period ON TimeSlot.PeriodId = Period.PeriodId;
#LIMIT 5;
SELECT * FROM Day;
-- Modify/ALTER Course table



