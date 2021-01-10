SELECT Staff.Forename, Staff.Surname
FROM Staff, LecturerCourse, Courses
WHERE Staff.StaffID = LecturerCourse.LecturerID
AND Courses.CouseID = LecturerCourse.CourseID
AND Courses.Title = "CS-1Q" AND Staff.JobTite = "professor";