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
