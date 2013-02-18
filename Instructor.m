classdef Instructor < handle
    %Defines an instructor model
    %Name(s): August Price and David Young
    %Email(s): price.august@gmail.com, dcyoung@wustl.edu
    %Assignment: Lab 10
    %Date:11/16/12
    properties
        Name
        id
        Courses
    end
    methods
        function I = Instructor(name, ID)
            %Constructor - initializes attributes. You should store both inputs
            %to properties. You will also need to create a list that
            %can be used to store the courses that the instructor is in charge of
            %teaching.
            
            %name - string (example: 'Doug Shook')
            %ID - numeric
            
            %Important tip: to create an empty vector of a certain type, use
            %the empty function. For example, Student.empty would create an
            %empty vector of students.
            
            I.Name = name;
            I.id = ID;
            I.Courses = Course.empty;
            
        end
        function printCourses(I)
            %Prints all of the courses that this instructor is teaching. For this function
            %you need to print out the course number, title, room, and meeting time.
            
            fprintf('\nCourses for %s', I.Name);
            for i=1:length(I.Courses)
                fprintf('\n Course Number: %s\n Course Title: %s\n Room: %s\n Meeting Time: %s\n', I.Courses(i).Number, ...
                    I.Courses(i).Title,I.Courses(i).Room,I.Courses(i).Times);
            end
            
        end
        function addCourse(I, course)
            %Adds a course to an instructor's list of courses. You should append this course to the
            %list of courses you created in the constructor.
            
            I.Courses = [I.Courses, course];
            
        end
        function C = getCourse(I, number)
            %Gets a course that the instructor is teaching. You are given a
            %course number (string).
            
            %Use a loop to check all of the courses that this instructor is in charge of
            %to see if this course is on the list. If you find the course, return it.
            %Otherwise, return false.
            
            k=0;
            for i=1:length(I.Courses)
                if I.Courses(i).Number==number
                    k = 1;
                    C = I.Courses(i);
                end
            end
            if k == 0
                C = 0;
            end
        end
    end
end