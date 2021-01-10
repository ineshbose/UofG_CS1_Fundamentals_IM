CREATE TABLE Tutors (
  StaffID int NOT NULL,
  PartTime int,
  PRIMARY KEY (StaffID),
  FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);