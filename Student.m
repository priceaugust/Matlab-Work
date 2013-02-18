classdef Student < handle
    %This class represents a student and provides functions for adding/dropping courses
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
        function S = Student(name, ID)
            %Constructor - defines initial attributes
            %You will need to store the provided name and ID to the "self" variable
            %You will also need attributes that represent the courses a student
            %is enrolled in
            
            %Important tip: to create an empty vector of a certain type, use
            %the empty function. For example, Student.empty would create an
            %empty vector of students.
            
            S.Name = name;
            S.id = ID;
            S.Courses=Course.empty;
            
        end
        function addCourse(S, course)
            %Adds a course to a student's list of courses. You should append this course to the
            %list of courses you created in the constructor. You should check to see if the
            %student is already enrolled in the course before adding it to the list. If the
            %student tries to enroll in a course they are already enrolled in, print a message
            %stating so (do not add the course to the list!).
            
            %Once the student's list has been updated, you should also use the course.addStudent() function
            %to add the student to the course roster.
            
            %Tip: the find command will still work with class instances! If the
            %find command cannot find the value that you are looking for, it
            %will return an empty vector. You can check for empty vectors with
            %the isempty command.
            
            %%% Your code here %%%
          
            for i=1:length(S.Courses)
                if S.Courses(i)== course
                    disp (' ');
                    disp('student is already enrolled in this course.');
                end
            end
         
            S.Courses = [S.Courses, course];
            course.addStudent(S);
            
        end
        
        function dropCourse(S, course)
            %Drops a course from the student's list of enrolled courses. Before doing so, you should
            %check to see that the student is enrolled in the course. If the student is not enrolled in the
            %course you should print a message stating so.
            
            %Once the student's list has been updated, you should also use the course.removeStudent() function
            %to update the course roster.
            
            %Tip: the find command will still work with class instances! If the
            %find command cannot find the value that you are looking for, it
            %will return an empty vector. You can check for empty vectors with
            %the isempty command.
            

            for i=1:length(S.Courses)
                if S.Courses(i) == course
                    S.Courses(i) = [];
                    course.removeStudent(S);
                    return;
                end
            end
            disp(' ');
            disp('The student is not enrolled in this course.');

            
        end
        function printSchedule(S)
            %Prints all of the student's courses and their information including the instructor, room, and
            %meeting times. You should also print out the total number of credits that a student is enrolled in.
           
            k=0;
            fprintf('\nSchedule for %s', S.Name);
            for i=1:length(S.Courses)
                fprintf('\n Course Number: %s\n Course Name: %s\n Instructor: %s\n Room: %s\n Meeting Time: %s\n Credits: %s\n', S.Courses(i).Number, ...
                    S.Courses(i).Title, S.Courses(i).Instructor.Name,S.Courses(i).Room,S.Courses(i).Times, num2str(S.Courses(i).Creds));
                k=k+S.Courses(i).Creds;
            end
            k = int2str(k);
            fprintf('Total Credits: %s\n', k);
        end
    end
end