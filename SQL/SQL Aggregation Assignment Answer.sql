use SQL_Practice;
-----------------
#Basic Questions
select count(recordid) as Total_Number_Of_Records from student_grades;
select avg(grade) as Average_Of_Grades from student_grades;
select max(grade) as Highest_Of_Grades from student_grades;
select min(grade) as Lowest_Of_Grades from student_grades;
select count(distinct(studentid)) as Distinct_Students_Number from student_grades;
select CourseID,avg(grade) as Average_Of_Grades from student_grades group by CourseID;
select Department,count(recordid) as Number_Of_Students from student_grades group by Department;
select CourseID,max(grade) as Highest_Of_Grades from student_grades group by CourseID;
select Department,min(grade) as Lowest_Of_Grades from student_grades group by Department;
select StudentID,count(CourseID) as Number_Of_Courses from student_grades group by StudentID;
------------------------------------------------------------------------------------------------
#Intermediate Questions
select CourseID from student_grades group by CourseID having avg(Grade)>75;
select StudentID from student_grades group by StudentID having count(CourseID)>3;
select Department from student_grades group by Department having avg(grade)<65;
select StudentID from student_grades group by StudentID having max(grade)=100;
select CourseID from student_grades group by CourseID having count(StudentID)>=20;
------------------------------------------------------------------------------------------------
#Advanced Questions	
select StudentID from student_grades group by StudentID having count(CourseID)>=4 and avg(Grade)>80;
select Department from student_grades group by Department having max(grade)*2>avg(Grade);
select CourseID from student_grades group by CourseID 
having avg(grade) >  (SELECT AVG(grade) FROM student_grades);
select StudentID from student_grades group by StudentID having min(grade)>70;
select StudentID from student_grades group by StudentID having max(grade)>70;