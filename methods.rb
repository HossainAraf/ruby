# METHODS

# METHOD DEFINITION SYNTAX
def my_method_name
  puts "method body"
end

# CALLING A METHOD
my_method_name

# NAMING CONVENTIONS
# - Use snake_case for method names
# - Use descriptive names
# - Use a verb to name the method
# - Starts with a lowercase letter or an underscore(_)
# - Ends with ?, !, or =
# - Can contain letters, numbers, and underscores
# - Cannot contain spaces or special characters
# - Cannot be a reserved word (totals of 43 reserved words)
# - Cannot be a built-in method name
# - Cannot be a class name

# PARAMETERS & ARGUMENTS
def greet(name)
  puts "Hello, #{name}!"
end

greet("John")

def my_school(name)
  puts "My school name is " + name
end

my_school("KD")

# DEFAULT PARAMETERS
def greeting(name = "stranger")
  puts "Hello, #{name}!"
end

greeting("John")
greeting

# IMPLICIT RETURN
# - The return keyword is optional
# - The last line of the method is the return value
def add(a, b)
  a + b
end

puts add(2, 3)

# EXPLICIT RETURN  (= USING THE RETURN KEYWORD)
def subtract(a, b)
  return a - b
end

puts subtract(5, 3)

# RETURNING MULTIPLE VALUES
def multiple_values
  return 1, 2, 3
end

puts multiple_values

def even_odd(number)
  unless number.is_a? Numeric
    return "Please enter a number." # return is used to exit the method. otherwise, the method will continue to execute the next line of code
  end

  if number % 2 == 0
    "The number is even."
  else
    "The number is odd."
  end
end

puts even_odd("L")

# DIFFERENCE BETWEEN RETURN AND PUTS
# - return is used to exit the method
# - puts is used to print the output to the console
def return_vs_puts
  return "I'm using the return keyword"
  puts "I'm using the puts keyword"
end

puts return_vs_puts

def puts_squred(num)
  puts num * num
end

puts_squred(5)

def retern_squared_01(num)
  num * num
end

puts retern_squared_01(5)

x = retern_squared_01(20)
y = 100
sum = x + y
puts "The sum of #{x} and #{y} is #{sum}"

# METHOD CHAINING
phrase_01 = ["be", "to", "not", "or", "be", "to"]
puts phrase_01.reverse.join(" ").capitalize

# PREDICATE METHODS
# - A method that returns a boolean value
# - Ends with a question mark (?)
# - Used to check the state of an object
# - Used to check the truthiness of a statement
puts 5.even?
puts 5.odd?
puts 12.between?(10,19)

# BANG METHODS
# - A method that ends with an exclamation mark (!)
# - Used to mutate the caller
# - Used to indicate that the method is dangerous
# - Used to indicate that the method is destructive
phrase_02 = "hello"
puts phrase_02.upcase
puts phrase_02

puts phrase_02.upcase!
puts phrase_02

# ALIAS METHOD
# - Used to create an alias for a method

def original_method
  puts "I'm the original method"
end

alias new_method original_method
new_method
