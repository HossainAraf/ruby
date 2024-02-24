# puts "Enter your name:"
# name = gets

# puts "Your name is " + name

# USEFUL STRING METHODS

myString = "I'm a string"

#1. Length of string
puts myString.length
puts myString.size # Same as length

#2. Reverse
puts myString.reverse

#3. Search for a character
puts myString.include?("I'm")
puts myString.include?("i'm") # Case sensitive. So this will return false
puts myString.include?("Mack")

#4. Replace a character or word
myString1 = "His name is Nihal. Nihal is a good boy."
puts myString1.sub("Nihal", "Saad") # Replace first occurence only
puts myString1.gsub("Nihal", "Saad") # Replace all occurences

#5 Split a string
puts myString1.split # Splits on space. Returns an array of all words.
p myString1.split # p is used to print array in a better way & also to print nil value and for debugging purpose.

#6. Trim a string
myString2 = "    I'm a string with spaces.    "
puts myString2.strip # Removes spaces from both ends

#7. Add something to the beginning or end of a string
myString3 = "How are you?"
puts myString3.prepend("Hey! ") # Adds at the beginning
puts myString3.concat(" What's up?") # Adds at the end
puts myString3 << " What's up?" # Adds at the end
puts myString3 + " What's up?" # Adds at the end
puts myString3.insert(3, "Hey! ") # Adds at the 4th position
