classdef Course < handle
    %Defines a course and all of its attributes. Keeps track of a roster that students can be
    %added or removed from
    %Name(s): August Price and David Young
    %Email(s): price.august@gmail.com, dcyoung@wustl.edu
    %Assignment: Lab 10
    %Date:11/16/12
    properties
        %%% Put properties here %%%
        Number
        Title
        Instructor
        Room
        Times
        Creds
        Seats
        Roster
    end
    methods
        function C = Course(number, title, instructor, room, times, creds, seats)
            %Constructor - defines initial attributes
            
            %number - string (example: 'CSE200')
            %title - string (example: 'Scientific and Engineering Computing')
            %instructor - Instructor instance
            %room - string (example: 'McDonnell 162')
            %times - string (example: 'MW 4-5:30')
            %creds - integer (number of credits)
            %seats - integer (maximum enrollment)
            
            %All of the values given as input should be stored to their
            %respective properties.
            %You will also need to create a roster property that can be used to keep track
            %of which students are enrolled in the course.
            
            %Once the initial attributes are set, you should also add the
            %course to the instructor's list of courses by using the
            %appropriate function.
            
            %Important tip: to create an empty vector of a certain type, use
            %the empty function. For example, Student.empty would create an
            %empty vector of students.
            
            C.Number = number;
            C.Title = title;
            C.Instructor = instructor;
            C.Instructor.addCourse(C);
            C.Room = room;
            C.Times = times;
            C.Creds= creds;
            C.Seats= seats;
            C.Roster = [];
            %C.Instructor.addCourse(instructor, 12);
            
        end
        
        function addStudent(C, student)
            %Adds a student to the roster. Before adding the student to the roster, you
            %should check to make sure that they are not already enrolled. You also need
            %to check to see if there is room in the class for the student. Print out
            %a message if the student is already enrolled in the class or if the class
            %is full, otherwise add the student to the roster that you created
            %in the constructor.
            
            %Tip: the find command will still work with class instances! If the
            %find command cannot find the value that you are looking for, it
            %will return an empty vector. You can check for empty vectors with
            %the isempty command.
            
            C.Roster = [C.Roster, student];
        end
        
        function removeStudent(C, student)
            %Removes a student from the roster. You should first check to see that the student
            %is enrolled in the course. If they are not enrolled in the course print a message
            %stating so. Otherwise, take the student off the course roster.
            
            for i=1:length(C.Roster)
                if C.Roster(i) == student
                    C.Roster(i) = [];
                    return;
                end
            end
        end
        
        function printRoster(C)
            %Prints the roster of students for this course. You only need to print out
            %the student names (though you can include ID numbers if you wish).
            
            %Tip: the find command will still work with class instances! If the
            %find command cannot find the value that you are looking for, it
            %will return an empty vector. You can check for empty vectors with
            %the isempty command.
            
            fprintf('\nRoster of %s\n', C.Title);;
            for i=1:length(C.Roster)
                fprintf(' %s\n', C.Roster(i).Name);
            end
        end
        
    end
end
