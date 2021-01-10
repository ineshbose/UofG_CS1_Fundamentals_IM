SELECT Staff.Forename, Staff.Surname
FROM Staff, TutorialGroups
WHERE Staff.StaffID = TutorialGroups.Tutor
AND Staff.JobTitle != "lecturer"
AND TutorialGroups.TutorialRoom = 11;