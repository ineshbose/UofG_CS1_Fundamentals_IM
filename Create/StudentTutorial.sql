CREATE TABLE StudentTutorial (
  StudentID int NOT NULL,
  CourseID varchar(5) NOT NULL,
  Group int NOT NULL,
  PRIMARY KEY (StudentID, CourseID, Group),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CourseID, Group) REFERENCES TutorialGroups(Course, LabID)
);
