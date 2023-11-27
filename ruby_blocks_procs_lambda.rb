def apply_block(numbers)
  newArray =[]
  numbers.each do |num|
    newArray.push yield num
  end
  puts newArray
end

numbers = [1, 2, 3, 4, 5]
result = apply_block(numbers) { |num| num * 3 }
# puts resu<lt  # Expected output: [3, 6, 9, 12, 15]

def even_numbers(numbers_arr)
  even_numbers = []
  numbers_arr.each do |num|
    if yield num
      even_numbers.push(num)
    end
  end
  even_numbers
end
numbers_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
result = even_numbers(numbers_arr) { |num| num.even? }
p result  # Expected output: [2, 4, 6, 8, 10]



def call_proc(my_proc)
  count = 500
  my_proc.call(count)
end
count   = 1
my_proc = Proc.new {|count| puts count }
p call_proc(my_proc)