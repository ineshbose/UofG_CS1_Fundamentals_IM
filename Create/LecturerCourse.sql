CREATE TABLE LecturerCourse (
  LecturerID int NOT NULL,
  CourseID varchar(5) NOT NULL,
  PRIMARY KEY (LecturerID, CourseID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
  FOREIGN KEY (LecturerID) REFERENCES Lecturers(StaffID)
);