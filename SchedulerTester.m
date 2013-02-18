%Create some instructors
doug = Instructor('Doug Shook', 123456);
newton = Instructor('Isaac Newton', 143252);
chemist = Instructor('Walter White', 159218);

%Create some students
john = Student('John Doe', 654321);
mary = Student('Mary Smith', 142534);
justin = Student('Justin Bieber', 888888);
harry = Student('Harry Potter', 111111);
katniss = Student('Katniss Everdeen', 222222);
albert = Student('Albert Einstein', 333333);
batman = Student('Batman', 444444);
thane = Student('Dragon Born', 555555);
zuck = Student('Mark Zuckerberg', 666666);
obama = Student('Barack Obama', 777777);

%Create some courses
cse200 = Course('CSE200', 'Engineering and Scientific Computing', doug, 'McDonnell 162', 'MW 4-5:30', 3, 120);
cse260 = Course('CSE260', 'Introduction to Digital Logic', doug, 'Lopata 101', 'MW 2:30-4', 3, 60);
chem100 = Course('CHEM100', 'Intro to Chemistry', chemist, 'Lopata 408', 'TR 2-3', 3, 5);
mech100 = Course('MECH100', 'Intro to Mechanics', newton, 'Urbauer 218', 'TR 10-11:30', 3, 30);

%Should be able to see what courses are being taught by whom now:
doug.printCourses();
newton.printCourses();
chemist.printCourses();

%Enroll some students in the courses:
john.addCourse(cse200);
harry.addCourse(cse200);
katniss.addCourse(cse200);
mary.addCourse(cse200);
albert.addCourse(cse200);
zuck.addCourse(cse200);
obama.addCourse(cse200);

john.addCourse(cse260);
batman.addCourse(cse260);
katniss.addCourse(cse260);
thane.addCourse(cse260);
obama.addCourse(cse260);

batman.addCourse(chem100);
harry.addCourse(chem100);
obama.addCourse(chem100);
mary.addCourse(chem100);
albert.addCourse(chem100);

john.addCourse(mech100);

%Now we should be able to examine course rosters as well as student schedules:
cse200.printRoster();
cse260.printRoster();
chem100.printRoster();
mech100.printRoster();

john.printSchedule();
batman.printSchedule();
katniss.printSchedule();

%Now to test a student dropping a course:
john.dropCourse(cse200);
cse200.printRoster(); %He should no longer be on the roster
john.printSchedule(); %The course should no longer show up on his schedule

%Finally, let's test some cases that could potentially cause errors:
john.addCourse(chem100); %The course is already full, he can't enroll
albert.dropCourse(mech100); %He isn't enrolled in the course, can't drop it
john.addCourse(mech100); %He is already enrolled in the course, can't add it again

%An example of what the output from this file might look like is included below. Your output may be formatted differently
%but it should include the same information.

% Courses for Doug Shook
% CSE200 - Engineering and Scientific Computing
% Room: McDonnell 162
% Meeting Time: MW 4-5:30
% ------------------
% CSE260 - Introduction to Digital Logic
% Room: Lopata 101
% Meeting Time: MW 2:30-4
% ------------------
% Courses for Isaac Newton
% MECH100 - Intro to Mechanics
% Room: Urbauer 218
% Meeting Time: TR 10-11:30
% ------------------
% Courses for Walter White
% CHEM100 - Intro to Chemistry
% Room: Lopata 408
% Meeting Time: TR 2-3
% ------------------
% Roster for CSE200
% John Doe
% Harry Potter
% Katniss Everdeen
% Mary Smith
% Albert Einstein
% Mark Zuckerberg
% Barack Obama
% Roster for CSE260
% John Doe
% Batman
% Katniss Everdeen
% Dragon Born
% Barack Obama
% Roster for CHEM100
% Batman
% Harry Potter
% Barack Obama
% Mary Smith
% Albert Einstein
% Roster for MECH100
% John Doe
% Schedule for John Doe:
% CSE200 - Engineering and Scientific Computing
% Instructor: Doug Shook
% Room: McDonnell 162
% Meeting Time: MW 4-5:30
% Credits: 3
% ------------------
% CSE260 - Introduction to Digital Logic
% Instructor: Doug Shook
% Room: Lopata 101
% Meeting Time: MW 2:30-4
% Credits: 3
% ------------------
% MECH100 - Intro to Mechanics
% Instructor: Isaac Newton
% Room: Urbauer 218
% Meeting Time: TR 10-11:30
% Credits: 3
% ------------------
% Total credits: 9
% Schedule for Batman:
% CSE260 - Introduction to Digital Logic
% Instructor: Doug Shook
% Room: Lopata 101
% Meeting Time: MW 2:30-4
% Credits: 3
% ------------------
% CHEM100 - Intro to Chemistry
% Instructor: Walter White
% Room: Lopata 408
% Meeting Time: TR 2-3
% Credits: 3
% ------------------
% Total credits: 6
% Schedule for Katniss Everdeen:
% CSE200 - Engineering and Scientific Computing
% Instructor: Doug Shook
% Room: McDonnell 162
% Meeting Time: MW 4-5:30
% Credits: 3
% ------------------
% CSE260 - Introduction to Digital Logic
% Instructor: Doug Shook
% Room: Lopata 101
% Meeting Time: MW 2:30-4
% Credits: 3
% ------------------
% Total credits: 6
% Roster for CSE200
% Harry Potter
% Katniss Everdeen
% Mary Smith
% Albert Einstein
% Mark Zuckerberg
% Barack Obama
% Schedule for John Doe:
% CSE260 - Introduction to Digital Logic
% Instructor: Doug Shook
% Room: Lopata 101
% Meeting Time: MW 2:30-4
% Credits: 3
% ------------------
% MECH100 - Intro to Mechanics
% Instructor: Isaac Newton
% Room: Urbauer 218
% Meeting Time: TR 10-11:30
% Credits: 3
% ------------------
% Total credits: 6
% Course is full!
% Student is not enrolled in the course!
% Student is already in the course!