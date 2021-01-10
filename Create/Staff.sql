CREATE TABLE Staff (
  StaffID int NOT NULL,
  Forename varchar(45),
  Surname varchar(45),
  JobTitle varchar(45),
  Manager int,
  PRIMARY KEY (StaffID),
  FOREIGN KEY (Manager) REFERENCES Staff(StaffID)
);