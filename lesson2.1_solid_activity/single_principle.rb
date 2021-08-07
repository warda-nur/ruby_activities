class School
    def initialize(students, desk_chairs)
        @students = students
        @desk_chairs = desk_chairs
    end

    def final_total
        @students * @desk_chairs
    end
end

total = School.new(100, 50)
puts total.final_total