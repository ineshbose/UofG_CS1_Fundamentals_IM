SELECT StudentCourse.StudentID, StudentCourse.ExamMarks, StudentCourse.PracticalMarks
FROM StudentCourse, Courses
WHERE StudentCourse.CourseID = Courses.CourseID
AND Courses.Title = "CS-1Q";