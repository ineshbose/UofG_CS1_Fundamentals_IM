CREATE TABLE TutorialGroups (
  Course varchar(5) NOT NULL,
  LabID int NOT NULL,
  TutorialRoom int,
  LabRoom int,
  Tutor int,
  PRIMARY KEY (Course, LabID),
  FOREIGN KEY (Course) REFERENCES Courses(CourseID),
  FOREIGN KEY (Tutor) REFERENCES Tutors(StaffID)
);