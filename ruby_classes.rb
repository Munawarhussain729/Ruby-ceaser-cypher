class Student
    attr_accessor :name, :major, :gpa

    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end
end

student_1 = Student.new("Muhammad", "Islam", 4)
student_2 = Student.new("Ahmed", "Islamic studies", 3.5)

puts "Student #{student_1.name} has passed mjor #{student_1.major} with #{student_1.gpa}GPA"