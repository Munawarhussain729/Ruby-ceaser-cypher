def filter_hash(input_hash)
  modified_hash={}
  input_hash.each do |key, value|
    if yield(key, value)
      modified_hash[key] = value
    end
  end
  modified_hash
end

def filter_hash_with_select(input_hash)
input_hash.select{|key, value| yield key, value}
end

input_hash = { "name" => "John", "age" => 25, "city" => "New York", "gender" => "Male" }
result = filter_hash_with_select(input_hash) { |key, value| key.length > 3 && value.is_a?(String) }
puts result
# Expected output: { "name" => "John", "city" => "New York" }


def increment_age(person_details)
  person_details['age'] +=1
end

person_details = { "name" => "Alice", "age" => 30, "city" => "Wonderland" }
increment_age(person_details)
puts person_details["age"]
# Expected output: 31

def remove_city(person_details)
  person_details.delete('city')
end
person_details1 = { "name" => "Bob", "age" => 25, "city" => "Metropolis" }
remove_city(person_details1)
puts person_details1
# Expected output: { "name" => "Bob", "age" => 25 }

