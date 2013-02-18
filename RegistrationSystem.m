classdef RegistrationSystem < handle
    %Defines a menu system for registering courses and updating grades
    %Name(s): August Price and David Young
    %Email(s): price.august@gmail.com, dcyoung@wustl.edu
    %Assignment: Lab 10
    %Date:11/16/12
    properties
        School
    end
    methods
        function RS = RegistrationSystem(school)
            %Constructor - initialize attributes. You should store the given
            %school to a property.
            
            %school - an instance of the School class
            
            RS.School=school;
            
        end
        function mainMenu(RS)
            %The main menu. Asks the user to log in.
            sel = 0;
            while sel ~= 3
                fprintf('Welcome to the registration system for %s!\n', RS.School.Name);
                disp('')
                disp('1.) Log in as student')
                disp('2.) Log in as instructor')
                disp('3.) Exit')
                
                sel = input('Please select an option: ');
                
                %Use the option they entered to perform the required action
                %(studentLogin() or instructorLogin() functions, found below)
                %If they enter an option that isn't on the list, ask them to
                %try again.
                
                if sel == 1
                    RS.studentLogin;
                elseif sel == 2
                    RS.instructorLogin;
                elseif sel== 3
                    disp('goodbye');
                    return;
                else
                    sel = input('Please try again: ');
                end
                
            end
        end
        function studentLogin(RS)
            %Asks a student for their ID number and tries to verify their identity.
            %You must first request the user to input their ID number. You should
            %then use the getStudent() function from the School class to attempt
            %to verify that the student is in the system. If the student is found,
            %proceed to the studentMenu() (see below). If they have not been found
            %print an error and return to the main menu.
            
            
            a = input('Please enter your student ID number: ');
            k = getStudent(RS.School,a);
            if k==0
                disp('not a valid student id');
            else
                RS.studentMenu(k);
                
            end
            
            
        end
        function instructorLogin(RS)
            %Asks an instructor for their ID number and tries to verify their identity.
            %You must first request the user to input their ID number. You should
            %then use the getInstructor() function from the School class to attempt
            %to verify that the instructor is in the system. If the instructor is found,
            %proceed to the instructorMenu() (see below). If they have not been found
            %print an error and return to the main menu.
            
            a = input('Please enter your Instructor ID number: ');
            k = getInstructor(RS.School, a);
            if k==0
                disp('not a valid Instructor id');
            else
                RS.instructorMenu(k);
            end
            
            
        end
        function studentMenu(RS, student)
            %Lists the options available to students. The given student is the student
            %currently logged in (see studentLogin() above).
            sel = 0;
            while sel ~= 5
                disp('1.) View course listings')
                disp('2.) View current schedule')
                disp('3.) Add a course')
                disp('4.) Drop a course')
                disp('5.) Log out')
                
                sel = input('Please select an option: ');
                
                if sel==1
                    RS.School.printCourses;
                elseif sel == 2
                    student.printSchedule;
                elseif sel == 3
                    in = input('What course would you like to add? (please input course number): ','s');
                    in1=RS.School.getCourse(in);
                    student.addCourse(in1);
                elseif sel== 4
                    in = input('What course would you like to drop? (please input course number): ','s');
                    in1=RS.School.getCourse(in);
                    student.dropCourse(in1);
                elseif sel == 5
                    disp('Goodbye');
                else
                    sel = input('Please select an option: ');
                end
                %Your code here. Use the option that the user entered to perform the appropriate action
                %In all cases this will involve calling functions from the Student or School classes.
                
                %For dropping and adding courses, first ask the user to input the course number that they
                %would like to drop or add as a string (i.e. 'CSE200'). Then use the getCourse() function
                %from the School class to retrieve the course. Remember that this function will return
                %false if the course was not found. If that is the case, print a message stating that
                %the course couldn't be found and ask the user to try again. Otherwise, call the appropriate
                %add or drop function from the Student class.
                
                %If they exit from this menu they should be taken back to the main menu.
            end
        end
        function instructorMenu(RS, instructor)
            %Lists the options available to instructors. The instructor given is the instructor that is
            %currently logged in (see instructorLogin() above).
            sel = 0;
            while sel ~= 3
                disp('1.) View enrolled students')
                disp('2.) View teaching schedule')
                disp('3.) Log out')
                
                sel = input('Please select an option: ');
                
                if sel==1
                    in = input('What course would you like to view? (please input course number): ','s');
                    in1 = instructor.getCourse(in);
                    if in1 == 0
                        disp('This course was not found')
                    else
                        in1.printRoster;
                    end
                elseif sel == 2
                    instructor.printCourses;
                elseif sel == 3
                    disp('Goodbye');
                else
                    sel = input('Please select an option: ');
                end
                
                
                %For the first option, ask the user to input the course number they are interested in as a string
                %example ('CSE200'). Use the getCourse() function from the Instructor class (NOT the School
                %class) to retrieve the course and print out the roster. If the course was not found (getCourse()
                %returns False) print a message stating so.
                
                %For the second option, simply call the appropriate method
                %from the instructor class.
            end
        end
    end
end
