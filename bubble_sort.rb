def bubble_sort(input)
    max_index = input.length
    until max_index < 1
        new_max = 0
        for i in 1..max_index - 1 do
            if input[i - 1] > input[i]
                input[i - 1], input[i] = input[i] , input[i - 1]
                new_max = i
            end 
        end 
        max_index = new_max       
    end
    puts "#{input}"
end

bubble_sort([4,3,78,2,0,2])