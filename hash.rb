# CREATING A HASH
# facebook_knows_all = Hash.new
# puts "Enter your first name:"
# first_name = gets.chomp
# puts "Enter your last name:"
# last_name = gets.chomp
# puts "Enter your age:"
# age = gets.chomp
# puts "Enter your city:"
# city = gets.chomp
# puts facebook_knows_all[:first_name] = first_name
# puts facebook_knows_all[:last_name] = last_name
# puts facebook_knows_all[:age] = age
# puts facebook_knows_all[:city] = city
# puts facebook_knows_all

my_hash = Hash.new
puts my_hash

  shoes = {
    "summer" => "sandals",
    "winter" => "boots"
  }

  puts shoes["summer"]
  puts shoes["fall"]

# DATA TYPES
  puts shoes["summer"].class
  puts shoes["fall"].class

  # FETCH METHOD TO RETRIEVE VALUE
  puts shoes.fetch("summer")
  puts shoes.fetch("fall", "I don't know")

  # ADDING A KEY-VALUE PAIR
  shoes["fall"] = "sneakers"
  puts shoes

  # CHANGING A VALUE
  shoes["summer"] = "flip-flops"
  puts shoes

  # DELETING A KEY-VALUE PAIR
  shoes.delete("winter")
  puts shoes

  # CHECKING FOR A KEY
  puts shoes.key?("summer")
  puts shoes.key?("winter")

  # CHECKING FOR A VALUE
  puts shoes.value?("sandals")
  puts shoes.value?("boots")

  # RETRIEVING ALL KEYS
  print shoes.keys

  puts

  # RETRIEVING ALL VALUES
  print shoes.values

  puts

  # RETRIEVING ALL KEY-VALUE PAIRS
  # puts shoes.to_a
  print shoes.to_a

  puts

  # MERGING HASHES
  hash1 = {
    "a" => 100,
    "b" => 200
  }

  hash2 = {
    "b" => 254,
    "c" => 300
  }

  puts hash1.merge(hash2)

  # SYNBOLS AS KEYS
    # 1. Using the hash rocket syntax
  american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Challenger"
  }

  # 2. Using the symbol syntax
  japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
  }

  puts american_cars
  puts japanese_cars
  puts american_cars[:chevrolet]
  # puts japanese_cars[:nishan]
  # puts japanese_cars[:nishan].class
  puts japanese_cars[:nissan]

  # ITERATING OVER HASHES
  japanese_cars.each do |key, values|
    puts "The brand of the car is #{key} and the model is #{values}."
  end


  # HASH AS OPTIONAL PARAMETERS
  def greeting(name, options = {} )
    my_name = "Hi, my name is #{name}"
    if options.empty?
      puts my_name
    else
      puts my_name + " and I'm #{options[:age]} " + "years old and I live in #{options[:city]}."
    end
  end

  greeting("Bob")
  greeting("Charlie", {age: 25, city: "LA"})
  greeting("Matt", {city: "NYC"})
  greeting("John", age:35, city: "Texas") # curly braces are optional when a hash is the last argument in a method  call

  # TYPE OF KEYS
  # 1. Using strings as keys
  hash3 = {
    "a" => 100,
    "b" => 200
  }

  # 2. Using symbols as keys
  hash4 = {
    a: 100,
    b: 200
  }

  # 3. Using a mix of strings and symbols as keys
  hash5 = {
    "a" => 100,
    b: 200
  }

  # 4. Using integers as keys
  hash6 = {
    1 => 100,
    2 => 200
  }

  # 5. Using floats as keys
  hash7 = {
    1.0 => 100,
    2.0 => 200
  }

  # 6. Using booleans as keys
  hash8 = {
    true => 100,
    false => 200
  }

  # 7. Using nil as a key
  hash9 = {
    nil => 100
  }

  # 8. Using an array as a key
  hash10 = {
    [1, 2, 3] => 100
  }

  # 9. Using a hash as a key
  hash11 = {
    {a: 1, b: 2} => 100
  }

  # 10. Using a range as a key
  hash12 = {
    (1..3) => 100
  }

  # 11. Using a regular expression as a key
  hash13 = {
    /abc/ => 100
  }

  # 12. Using a proc as a key
  hash14 = {
    -> { "a" } => 100
  }

  # 13. Using a lambda as a key
  hash15 = {
    -> { "a" } => 100
  }

  # 14. Using a method
  def my_method
    "a"
  end

  hash16 = {
    my_method => 100
  }

  # 15. Using a class as a key
  hash17 = {
    String => 100
  }

  # 16. Using a module as a key
  hash18 = {
    Math => 100
  }

  # 17. Using a file as a key
  hash19 = {
    File => 100
  }

  # 18. Using a time as a key
  hash20 = {
    Time.now => 100
  }

  # 19. Using a date as a key
  require 'date'
  hash21 = {
    Date.today => 100
  }

