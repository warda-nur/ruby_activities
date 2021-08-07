class Condo
    def type
        puts "The condo has 1 room"
    end
end
   
class House < Condo
    def type
        puts "The house has 3 rooms"
    end
end
   
class Mansion < Condo
    def type
        puts "The mansion has 6 rooms"
    end
end