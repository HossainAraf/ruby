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