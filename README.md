# UofG CS1 Fundamentals (IM)

This repository contains SQL scripts for Information Management half of the course CS1F.

## The Scenario

The School of Computing Science stores details of its courses including details of the students that take the course, the lecturers that teach them and the assessments that the students receive for the courses they take. In addition, where a course has tutorial groups, the student membership is recorded, along with details of the tutor that leads the tutorial group. Each course has a unique identifying code (a 4 character string, e.g., 7FXU) and a longer title (e.g., ‘CS-1Q’). A course is taken by one or more students and is taught by one or more lecturers. Each student has a unique student ID (a 7 digit unsigned integer, e.g. 1234000), forename & surname, and an email address. Lecturers have a responsibility indicating the start week and end week for their teaching duties. In addition, all lecturers are members of staff, with a unique staff number (a 7 digit unsigned integer, e.g. 1003594), forename & surname and a job-title (one of professor, senior lecturer, lecturer, university teacher, associate lecturer, research assistant, research student, other). For each course that a student takes, there can be an associated exam mark in the range 0 to 100 and a practical mark in the range 0 to 30. Each course has 0 or more associated tutorial groups, numbered from 1 for each course. A tutorial group has one or more students and exactly one tutor. It also has room numbers for the lab and tutorial rooms. Tutors are members of staff, with an additional binary indication of their status as part-time or full-time. All staff members have exactly one manager who is also a member of staff.

## The Database

### Entities & Attributes
* Courses
    * __Course ID__
    * Title
* Students
    * __Student ID__
    * Forename & Surname
    * Email Address
* Lecturers (weak entity)
    * Responsibility - Start & End Week
* Tutorial Groups (weak entity)
    * Lab Number
    * Tutorial Room
* Staff
    * __Staff ID__
    * Forename & Surname
    * Job Title
    * Manager
* Tutors (weak entity)
    * Status (part-time or full-time)

### Relationships
* Subtype Relationship
    * Staff (super-type)
    * Lecturers (sub-type)
    * Tutors (sub-type)
    * Inclusive
* One-to-one relationships
    * _none_
* One-to-many relationships
    * Tutor-TutorialGroup
    * Course-TutorialGroup (identifying relationship)
    * Staff (recursive - Manager attribute)
* Many-to-many relationships
    * Student-TutorialGroup
    * Student-Course
        * Exam Marks
        * Practical Marks
    * Course-Lecturer

### Order of Operation
1. Students
2. Courses
3. Staff
4. Lecturers
5. Tutors
6. TutorialGroups
7. StudentCourse
8. LecturerCourse
9. StudentTutorial