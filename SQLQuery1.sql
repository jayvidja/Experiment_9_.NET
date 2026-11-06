CREATE TABLE Students
(
    PlacementId INT PRIMARY KEY IDENTITY(1,1),
    StudentId INT,
    CompanyName VARCHAR(100),
    JobRole VARCHAR(100),
    PackageLPA DECIMAL(10,2),
    IsPlaced BIT
);
GO

INSERT INTO Students
(StudentId, CompanyName, JobRole, PackageLPA, IsPlaced)
VALUES
(101, 'TCS', 'Software Developer', 5.5, 1),
(102, 'Infosys', 'Web Developer', 4.5, 1),
(103, 'Wipro', 'Software Engineer', 6.0, 1),
(104, 'Google', 'Data Analyst', 12.0, 1),
(105, 'Not Placed', 'N/A', 0, 0),
(106, 'Not Placed', 'N/A', 0, 0);
GO

SELECT * FROM Students;