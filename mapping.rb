=begin

Student [independent]
0) @@all =[]
1) initialize with (first_name)
2)self.all
3) add_boating_test => BoatingTest.new(student, test, boat_status, instructor) *student param = self*
4).find_student(name) => self.all.find {|student| student.first_name == first_name} 
5) tests = > BoatingTest.all.select {|test| test. == self}
grade_percentage => self.tests.select{|test| test.status == 'passed'}.count / self.tests.length
6)

Instructor [independent]
0) @@all = []
1)initialize with (name)
2) self.all 
3) pass_student => (student_inst, test_name) 
BoatingTest.all.find 
{|boat| boat.test == test_name && boat.student == student}
test_name.status = 'passed' 
BoatingTest.new(student, test, boat_status,self)

4) fail_student => (student_ins, test_name) {|boat| boat.test == test_name && boat.student == student}
test_name.status = 'failed' 
Boating.new(student, test, boat_status,self)



Boat [joiner ]
0) @@all = []
1) self.all => reads the @@all array
2) initialize with a (student) = instance, (test), (boat_status) and (instructor)





=end