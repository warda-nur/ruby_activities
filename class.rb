class Food 
 def initialize(name, quantity)
        @name = name
        @quantity = quantity
  end

  def eat
        puts "#{@name} are my favorite food! I can eat #{@quantity} of these."
   end
end

food = Food.new("burgers", 10)
food.eat


