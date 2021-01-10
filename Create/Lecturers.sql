CREATE TABLE Lecturers (
  StaffID int NOT NULL,
  StartWeek int,
  EndWeek int,
  PRIMARY KEY (StaffID),
  FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);