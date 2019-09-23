class Student

end
class Student
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test (test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(name)
        self.all.find {|student| student.name == name}
    end

    def tests
        BoatingTest.all.select {|boat_test| boat_test.student == self}
    end

    def grade_percentage
        self.tests.select { |test| test.test_status == 'passed' }.count / self.tests.size.to_f
    end
end
