CREATE TABLE StudentCourse (
  StudentID int NOT NULL,
  CourseID varchar(5) NOT NULL,
  ExamMarks int,
  PracticalMarks int,
  PRIMARY KEY (StudentID, CourseID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);