class Instructor
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def pass_student(student_inst, test_name)
        test_check = BoatingTest.all.find {|boat| boat.test_name == test_name && boat.student == student_inst} 
        if test_check == true 
            test_check.status = "passed"
        else 
            BoatingTest.new(student_inst, test_name, 'passed',self)
        end 
    end
    
    def fail_student(student_inst,test_name)
        test_check = BoatingTest.all.find {|boat| boat.test_name == test_name && boat.student == student_inst} 
            if test_check == true 
                test_check.status = "failed"
            else 
            BoatingTest.new(student_inst, test_name, 'failed',self)   
     end
    end
    
   
end
