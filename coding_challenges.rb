# 1. Return your first name and last name as your full name

puts "Enter your first name:"
first_name = gets
puts "Enter your last name:"
last_name = gets
# puts "Your full name is: " + first_name + last_name
full_name = first_name.concat(last_name)
puts "Your full name is: " + full_name

# 2. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this. 

# 1975
# 2004
# 2013
# 2001
# 1981

movies = {
  :jaws => 1975,
  :anchorman => 2004,
  :Man_on_Fire => 2013,
  :a_beautiful_mind => 2001,
  :raiders_of_the_lost_ark => 1981
}

puts movies[:jawa]
puts movies[:anchorman]
puts movies[:Man_on_Fire]
puts movies[:a_beautiful_mind]
puts movies[:raiders_of_the_lost_ark]

# 3. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

# movies = [1975, 2004, 2013, 2001, 1981]

# puts movies[0]
# puts movies[1]
# puts movies[2]
# puts movies[3]
# puts movies[4]

# 4. Make an array of the years from the hash in excersize 3 and use the puts command to output the same thing.

movies_dates = movies.values
puts movies_dates.inspect

# 5. Write a program to calculate the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts "Enter your numbers:"
num1 =gets.to_f
num2 =gets.to_f
num3 =gets.to_f

puts num1 ** 2
puts num2 ** 2
puts num3 ** 2

