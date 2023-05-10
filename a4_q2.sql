-- Select YOUR own database for assignment 4;
-- USE A4_courses_YOUR_NTU_ID;

DESCRIBE Course;

SELECT * FROM TimeSlot 
JOIN Day ON TimeSlot.DayId = Day.DayId
JOIN Period ON TimeSlot.PeriodId = Period.PeriodId
LIMIT 5;

-- Modify/ALTER Course table


