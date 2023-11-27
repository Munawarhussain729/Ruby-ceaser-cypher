def print_range_version
  (1..5).each do |number|
    puts number
  end
  puts
  (1..10).step(2) do |number|
    puts number
  end
  puts
  (1..5).reverse_each do |number|
    puts number
  end
  
end


def sum_even_numbers(range)
  sum = 0
  range.each do |num|
    sum += num if num.even?
  end
  sum 
end
range = (1..10)
result = sum_even_numbers(range)
puts result

def print_square_numbers(range)
  range.each do |num|
    puts "#{num} squared is #{num*num}"
  end
end

range = (1..5)
print_square_numbers(range)
