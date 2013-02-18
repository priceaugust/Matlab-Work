classdef School < handle
    %Keeps track of students, courses, and teachers for a school
    %Name(s): August Price and David Young
    %Email(s): price.august@gmail.com, dcyoung@wustl.edu
    %Assignment: Lab 10
    %Date:11/16/12
    properties
        Name
        Students
        Instructors
        Courses
    end
    methods
        function S = School(name, students, instructors, courses)
            %Constructor - initializes attributes. You should store
            %all of the given inputs to properties.
            
            %name - string (example: 'Wash U')
            %students - a list of Student instances
            %instructors - a list of Instructor instances
            %courses - a list of Course instances
            
            S.Instructors = instructors;
            S.Name = name;
            S.Students = students;
            S.Courses = courses;
            
        end
        function printCourses(S)
            %Prints all of the courses available at the school. Go through
            %the list of courses you stored in the constructor and print out
            %the number, title, instructor, room, meeting time, and number
            %of credits. You can convert numerical values to strings
            %using the num2str command if you need to.
            
            
            k=0;
            for i=1:length(S.Courses)
                fprintf('\n Course Number: %s\n Course Title: %s\n Room: %s\n Meeting Time: %s\n', S.Courses(i).Number, ...
                    S.Courses(i).Title,S.Courses(i).Room,S.Courses(i).Times);
                k=k+S.Courses(i).Creds;
            end
            disp('Total credits:');
            disp(k);
            
        end
        function Student = getStudent(S, ID)
            %Retrieves a student from the school based on their ID number. Use the list
            %of students that you stored in the constructor to see if you can find
            %a match. If you find a student that matches the given ID number, return
            %that student. Otherwise, return False.
            
            
            
            for i=1:length(S.Students)
                if S.Students(i).id == ID
                    Student = S.Students(i);
                    return;
                end
            end
            Student = 0;
            
        end
        function I = getInstructor(S, ID)
            %Retrieves an instructor from the school based on their ID number. Use the list
            %of instructors that you stored in the constructor to see if you can find
            %a match. If you find an instructor that matches the given ID number, return
            %that instructor. Otherwise, return False.
            
            for i=1:length(S.Instructors)
                if S.Instructors(i).id == ID
                    I = S.Instructors(i);
                    return;
                end
            end
            I = 0;
            
        end
        function C = getCourse(S, number)
            %Retrieves a course from the school based on the course number. Use the list
            %of courses that you stored in the constructor to see if you can find
            %a match. If you find a course that matches the given course number, return
            %that course. Otherwise, return False.
            
            
            for i=1:length(S.Courses)
                if S.Courses(i).Number(1:5) == number(1:5)
                    C = S.Courses(i);
                    return;
                end
            end
            C = 0;
        end
    end
end
