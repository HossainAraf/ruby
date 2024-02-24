require 'pry-byebug'

# # DEBUGGING WITH PUTS
# def isogram?(string)
#   original_length = string.length
#   string_array = string.downcase.split("") # Added parantheses after debugging
#   p string_array # Debugging
#   unique_length = string_array.uniq.length
#   p unique_length # Debugging
#   original_length == unique_length
# end

#  puts isogram?("Odin")

# # DEBUGGING WITH puts & nil
# puts "Using puts:"
# puts []
# p "Using p:"
# p []


# def isogram?(string)
#   original_length = string.length
#   string_array = string.downcase.split

#   binding.pry

#   unique_length = string_array.uniq.length
#   original_length == unique_length
# end

# isogram?("Odin")

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")