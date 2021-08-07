arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_array = []

arr.each do |num|
    if (num % 2 == 0) 
        new_array.push(num)
    end
end

puts new_array
