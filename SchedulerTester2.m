%Create an administrator
gus = Admin('Gus Price', 6666)

%Create some instructors
doug = Instructor('Doug Shook', 123456)
newton = Instructor('Isaac Newton', 234567)
chemist = Instructor('Walter White', 345678)

%Create some students
john = Student('John Doe', 654321)
mary = Student('Mary Smith', 142534)
justin = Student('Justin Bieber', 888888)
harry = Student('Harry Potter', 111111)
katniss = Student('Katniss Everdeen', 222222)
albert = Student('Albert Einstein', 333333)
batman = Student('Batman', 444444)
thane = Student('Dragon Born', 555555)
zuck = Student('Mark Zuckerberg', 666666)
obama = Student('Barack Obama', 777777)

%Create some courses
cse200 = Course('CSE200', 'Engineering and Scientific Computing', doug, 'McDonnell 162', 'MW 4-5:30', 3, 120)
cse260 = Course('CSE260', 'Introduction to Digital Logic', doug, 'Lopata 101', 'MW 2:30-4', 3, 60)
chem100 = Course('CHEM100', 'Intro to Chemistry', chemist, 'Lopata 408', 'TR 2-3', 3, 5)
mech100 = Course('MECH100', 'Intro to Mechanics', newton, 'Urbauer 218', 'TR 10-11:30', 3, 30)

%Put the instructors, students, and courses into lists so they can be used to create a school:
students = [john, mary, justin, harry, katniss, albert, batman, thane, zuck, obama]
instructors = [doug, newton, chemist]
courses = [cse200, cse260, chem100, mech100]

%Create a school:
s = School('Washington University in St. Louis', students, instructors, courses)

%Add some courses for the students

john.addCourse(cse200)
harry.addCourse(cse200)
katniss.addCourse(cse200)
mary.addCourse(cse200)
albert.addCourse(cse200)
zuck.addCourse(cse200)
obama.addCourse(cse200)

john.addCourse(cse260)
batman.addCourse(cse260)
katniss.addCourse(cse260)
thane.addCourse(cse260)
obama.addCourse(cse260)

batman.addCourse(chem100)
harry.addCourse(chem100)
obama.addCourse(chem100)
mary.addCourse(chem100)
albert.addCourse(chem100)

john.addCourse(mech100)

%Create a menu and start it:
r = RegistrationSystem(s)
r.mainMenu()

%At this point you should be able to access all of the necessary operations
%through the registration system. Check each item on the menu very
%carefully and make sure that everything works as expected!
