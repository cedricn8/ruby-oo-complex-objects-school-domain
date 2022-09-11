class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end
    
    def add_student(student, grade)
        if roster[grade] == nil 
           roster[grade] = []
        end
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.map do |grade, student_array|
            roster[grade] = student_array.sort
        end
        roster
    end

    
end
