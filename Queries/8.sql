SELECT Students.Forename, Students.Surname, AVG(StudentCourse.ExamMarks), AVG(StudentCourse.PracticalMarks)
FROM Students, StudentCourse
WHERE Students.StudentID = StudentCourse.StudentID
AND StudentCourse.ExamMarks IS NOT NULL
AND StudentCourse.PracticalMarks IS NOT NULL
AND Students.Surname = "Smith" OR Students.Surname = "Saunders"
GROUP BY StudentCourse.StudentID;