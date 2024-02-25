 # include? METHOD
  # without using include? method
numbers = [5,6,7,8]
element = 6
result = nil # nil is a special value in Ruby that represents "nothing" or "empty"
             # result = false is also a valid option

numbers.each do |num|
  if num == element
    result = true
  end
end

puts result

element = 3
result = nil
numbers.each do |num|
  if num == element
    result = true
    break
  end
end

puts result

# using include? method
num_01 = [1,2,3,4,5]
output = num_01.include?(3)
puts output
output = num_01.include?(6)
puts output

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
puts friends.include?('Brian')
puts invited_list.include?('Brian')

# any? METHOD
 # without using any? method
numbers = [21, 42, 303, 499, 550, 811]
result = false
numbers.each do |number|
  if number > 500
    result = true
  end
end
puts result

 # using any? method
numbers = [21, 42, 303, 499, 550, 811]
result = numbers.any? { |number| number > 500 }
puts result

result = numbers.any? { |number| number < 20 }
puts result

# all? METHOD
  # without using all? method
numbers = [2, 4, 6, 8, 10]
result = true
numbers.each do |number|
  if number.odd?
    result = false
  end
end
puts result

  # using all? method
numbers = [2, 4, 6, 8, 10]
result = numbers.all? { |number| number.even? }
puts result

fruits = ['apple', 'banana', 'pear']
result = fruits.all? { |fruit| fruit.length >= 3 }
puts result
result = fruits.all? { |fruit| fruit.length >= 5 }
puts result
# Special note to keep in mind while debugging: #all? will return true by default unless the block returns false or nil. So if you call #all? on an empty array or hash (i.e., there are no elements for the block to evaluate), it will return true.

# none? METHOD
  # without using none? method
numbers = [3, 5, 7, 11, 13, 15]
result = true
numbers.each do |number|
  if number.even?
    result = false
  end
end
puts result

  # using none? method
numbers = [3, 5, 7, 11, 13, 15]
result = numbers.none? { |number| number.even? }
puts result

fruits = ['apple', 'banana', 'pear']
result = fruits.none? { |fruit| fruit.length > 5 }
puts result

result = fruits.none? { |fruit| fruit.length == 5 }
puts result

result = fruits.none? { |fruit| fruit.length < 3 }
puts result