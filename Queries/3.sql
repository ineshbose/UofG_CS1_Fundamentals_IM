SELECT Students.Forename, Students.Surname, StudentCourse.ExamMarks, StudentCourse.PracticalMarks,
FROM Students, StudentCourse, Courses
WHERE StudentCourse.CourseID = Courses.CourseID
AND Students.StudentID = StudentCourse.StudentID
AND Course.Title = "CS-1Q"
ORDER BY Students.Surname ASC;