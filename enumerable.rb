# LIFE BEFORE ENUMERABLES
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
invited_list = []

for friend in friends
  if friend != "Brian"
    invited_list.push(friend)
  end
end

puts invited_list

# LIFE AFTER ENUMERABLES
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
invited_list = friends.select { |friend| friend != "Brian" }
puts invited_list
#OR
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
invited_list = friends.reject { |friend| friend == "Brian" }
puts invited_list

# each METHOD FOR ARRAYS
books = ['math', 'science', 'history']
books.each { |book| puts "This is a book about " + book }

my_arr = [1, 1, 2, 3, 5, 8]
my_arr.each do |num|
  num = num * num
  puts "The new number is #{num}"
end

# each METHOD FOR HASHES
my_hash = {"one" => 1, "two" => 2, "three" => 3}

# When you use two block parameters in the block passed to each for a hash, it treats each key-value pair separately
my_hash.each { |key, value| puts "#{key} maps to #{value}" }

# when you use only one block parameter, Ruby treats each element of the hash as an array with two elements: the key and its corresponding value.
my_hash.each { |pair| puts "The pair is #{pair}" }


#each returns the original array or hash regardless of what happens inside the code block.
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
print friends.each { |friend| friend.upcase } # => ["Sharon", "Leo", "Leila", "Brian", "Arun"]
puts

# each_with_index METHOD
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }
# Just like with the #each method, #each_with_index returns the original array it’s called on.

# map METHOD
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
friends_uppercase = []
friends.each { |friend| friends_uppercase.push(friend.upcase) }
print friends_uppercase # => ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
# Alternatively we can use the map method to achieve the same result in a more concise way. 
puts
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
print friends.map { |friend| friend.upcase } # => ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
# The map method returns a new array containing the results of applying the block to each element of the original array.
puts

my_order = ['medium Big Mac', 'medium fries', 'medium soda']
puts my_order.map { |item| item.gsub("meium", "extra large")}

salaries = [1200, 1500, 1100, 1800]
expend_without_houserent = salaries.map { |salary| salary -700} # house rent is 700
puts expend_without_houserent
# The map method returns a new array containing the results of applying the block to each element of the original array.

# select METHOD
  # The select method returns a new array containing all the elements of the original array for which the given block returns a true value.
  # Let's achieve this using each method first
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
invited_list = []
friends.each do |friend|
  if friend != "Brian"
    invited_list.push(friend)
  end
end
puts invited_list

# Now let's achieve the same result using the select method
friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
invited_list = friends.select { |friend| friend != "Brian" }
puts invited_list

responses = {:"Sharon" => "yes", :"Leo" => "no", :"Leila" => "yes", :"Brian" => "no", :"Arun" => "yes"}
puts responses.select { |person, response| response == "yes" }

# reduce METHOD
  # The reduce method (also called inject) combines all elements of the array by applying a binary operation, specified by a block or a symbol that names a method or operator.
  # Let's achieve this using each method first
my_numbers = [5, 6, 7, 8]
sum = 0
my_numbers.each { |number| sum += number }
puts sum

# Now let's achieve the same result using the reduce method
my_numbers = [5, 6, 7, 8]
output = my_numbers.reduce { |sum, number| sum + number }
puts output
# accumulator: the first block parameter, sum in this case, is the accumulator. It accumulates the results of the block as it is executed for each element of the array.
# element: the second block parameter, number in this case, is the current element of the array.
# The reduce method returns the final value of the accumulator.
# The result of the block is stored in the accumulator and then passed to the next iteration of the block. THe accululator is also the value that the reduce method returns at the end.By default, the accumulator is the first element of the array. So, for each step of the iteration, we would have the following:
# 1. Iteration 0: sum = 5+6 = 11
# 2. Iteration 1: sum = 11+7 = 18
# 3. Iteration 2: sum = 18+8 = 26

# We can also set a default initial value for the accumulator.
my_numbers = [5, 6, 7, 8]
output = my_numbers.reduce(1000) { |sum, number| sum + number }
puts output

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
tally = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
puts tally

# bang METHOD (!)
  # The bang method (!) is a convention in Ruby to indicate that the method will modify the object it's called on.
  # The bang method available in several enumerable methods, such as map, select, and reduce, among others.

  # without the bang method
  friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
  puts friends.map { |friend| friend.upcase } # => ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
  puts friends # => ["Sharon", "Leo", "Leila", "Brian", "Arun"]

  # with the bang method (!)
  friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
  puts friends.map! { |friend| friend.upcase } # => ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
  puts friends # => ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]

# RETURN VALUES OF ENUMERABLE METHODS
# So if it’s not a good idea to use bang methods but we need to reuse the result of an enumerable method throughout our program, what can we do instead?
 # OPTION 1: Assign the result of the enumerable method to a local variable
  friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
  invited_list = friends.select { |friend| friend != "Brian" }
  print invited_list
  print friends

  # OPTION 2: Wrap the enumerable method in a method
  friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
  def invited_list(friends)
    friends.select { |friend| friend != "Brian" }
  end
  print invited_list(friends)
  print friends


  # The return value of the each method is the original array it was called on.
  # The return value of the map method is a new array containing the results of applying the block to each element of the original array.
  # The return value of the select method is a new array containing all the elements of the original array for which the given block returns a true value.
  # The return value of the reduce method is the final value of the accumulator.
  # The return value of the bang method (!) is the original array it was called on, after it has been modified by the method.

# CHAINING ENUMERABLE METHODS
  # We can chain enumerable methods together to perform more complex operations on arrays and hashes.
  # Let's say we have an array of numbers and we want to:
    # 1. Select only the odd numbers
    # 2. Multiply each odd number by 3
    # 3. Add all the results together
  my_numbers = [1, 2, 3, 4, 5]
  result = my_numbers.select { |number| number.odd? }.map { |number| number * 3 }.reduce { |sum, number| sum + number }
  puts result

# The order of the methods in the chain matters. The result of the first method is passed to the second method, and so on.
# In the example above, the result of the select method is passed to the map method, and the result of the map method is passed to the reduce method.
# If we were to change the order of the methods, we would get a different result.
  # my_numbers = [1, 2, 3, 4, 5]
  # result = my_numbers.reduce { |sum, number| sum + number }.select { |number| number.odd? }.map { |number| number * 3 }
  # puts result
  # This would result in a NoMethodError because the select method is not available for the result of the reduce method. The reduce method returns a single value, not an array.

# The order of the methods in the chain matters. The result of the first method is passed to the second method, and so on.
# In the example above, the result of the select method is passed to the map method, and the result of the map method is passed to the reduce method.
# If we were to change the order of the methods, we would get a different result.
# The order of the methods in the chain matters. The result of the first method is passed to the second method, and so on.