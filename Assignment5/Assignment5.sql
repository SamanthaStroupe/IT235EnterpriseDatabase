-- Samantha Stroupe. 3/29/22.

drop database if exists Student_Classes;
create database if not exists Student_Classes;
use Student_Classes; 

create table Students.Student_Classes
	(
    studentID varchar(60) key,
    studentName varchar(60),
    address varchar(60),
    email varchar(255), 
    major varchar(50)
    );
    
create table Classes.Student_Classes
	(
    studentId int key,
    class varchar(60)
    );
    
insert into Students(studentID, studentName, address, email, major) values 
	("S1", "John Jones", "124 Main St.", "Joe@School.edu", "Programming and Development"),
    ("S2", "Sue Smith", "345 Second St.", "Sue@School.edu", "Programming and Development"),
    ("S3", "Nick Foyar", "45 York Road", "Nick@School.edu", "Networking"),
    ("S4", "Andy Andrews", "600 5th Ave.", "Andy@School.edu", "Networking"), 
    ("S5","Sally Marks", "508 5th St.", "Sally@School.edu", "Data Analytics"),
    ("S6", "Jim Jones", "708 Fish Ave.", "Jim@School.edu", "Networking Software"),
    ("S7	Frankie Down", "648 Sur Dr.", "Frankie@School.edu", "Data Analytics");
    
insert into Classes(StudentID, class) values
	("S1", "IT1025"),
    ("S1", "MATH1200"),
    ("S1", "IT1050"),
    ("S2", "IT1025"),
    ("S2", "IT1050"),
    ("S2", "IT2351"),
    ("S3", "IT1025"),
    ("S4", "IT1025"),
    ("S4", "IT1050"),
    ("S5", "IT2660"),
    ("S6", "IT1090"),
    ("S7", "MATH1200");

    
    
