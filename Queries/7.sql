SELECT StudentID, AVG(ExamMarks), AVG(PracticalMarks)
FROM StudentCourse
WHERE ExamMarks IS NOT NULL
AND PracticalMarks IS NOT NULL
GROUP BY StudentID;