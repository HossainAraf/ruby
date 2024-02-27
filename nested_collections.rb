# NESTEED ARRAY
test_scores = [[90, 95, 99], [80, 85, 89], [70, 75, 79]]
teacher_mailboxes = [
  ["Adam", "Baker", "Carter"],
  ["Davis", "Erickson", "Fisher"],
  ["Garcia", "Harris", "Iverson"]
]
  # Accessing elements in a nested array
  puts test_scores[0][0] # 90
  puts teacher_mailboxes[0][0] # "Adam"
  puts teacher_mailboxes[2][2] # "Iverson"
  # puts teacher_mailboxes[3][0] # NoMethodError: undefined method `[]' for nil:NilClass
  puts teacher_mailboxes[0][3] # nil
  # dig METHOD TO ACCESS NON-EXISTENT ELEMENTS TO AVOID NoMethodERROR
  puts teacher_mailboxes.dig(3, 0) # nil
  puts teacher_mailboxes.dig(0, 3) # nil

  # CREATING & MODIFYING NESTED ARRAYS
  mutable = Array.new(3, Array.new(2))
  print mutable # [[nil, nil], [nil, nil], [nil, nil]]
  mutable[0][0] = 100
  print mutable # [[100, nil], [100, nil], [100, nil]]
  # The problem is that the Array.new(3, Array.new(2)) creates a single array of three elements, each of which is a reference to the same array.
  # To avoid this, you can use the block form of Array.new, which creates a new array for each element:
  immutable = Array.new(3) { Array.new(2) }
  print immutable # [[nil, nil], [nil, nil], [nil, nil]]
  immutable[0][0] = 100
  print immutable # [[100, nil], [nil, nil], [nil, nil]]

  # ADDING & REMOVING ELEMENTS FROM NESTED ARRAYS
    # Adding elements to the end of a nested array
  test_scores.push([60, 65, 69]) # using push method
  print test_scores # [[90, 95, 99], [80, 85, 89], [70, 75, 79], [60, 65, 69]]
  teacher_mailboxes << ["Jackson", "Klein", "Lopez"] # using << (shovel operator)
  print teacher_mailboxes # [["Adam", "Baker", "Carter"], ["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"], ["Jackson", "Klein", "Lopez"]]
    # Adding to a specific index
    test_scores[0].push(100) # using push method
    print test_scores # [[90, 95, 99, 100], [80, 85, 89], [70, 75, 79], [60, 65, 69]]
    teacher_mailboxes[0] << "Mason" # using << (shovel operator)
    print teacher_mailboxes # [["Adam", "Baker", "Carter", "Mason"], ["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"], ["Jackson", "Klein", "Lopez"]]
    # Adding to the beginning of a nested array
    test_scores.unshift([50, 55, 59]) # using unshift method
    print test_scores # [[50, 55, 59], [90, 95, 99, 100], [80, 85, 89], [70, 75, 79], [60, 65, 69]]
    teacher_mailboxes.unshift(["Hill", "Irving", "Johnson"]) # using unshift method
    print teacher_mailboxes # [["Hill", "Irving", "Johnson"], ["Adam", "Baker", "Carter", "Mason"], ["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"], ["Jackson", "Klein", "Lopez"]]
    # Adding to a specific index
    test_scores[0].unshift(40) # using unshift method
    print test_scores # [[40, 50, 55, 59], [90, 95, 99, 100], [80, 85, 89], [70, 75, 79], [60, 65, 69]]
    teacher_mailboxes[0].unshift("Gordon") # using unshift method
    print teacher_mailboxes # [["Gordon", "Hill", "Irving", "Johnson"], ["Adam", "Baker", "Carter", "Mason"], ["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"], ["Jackson", "Klein", "Lopez"]]
    
    # Removing elements from the end of a nested array
    test_scores.pop
    print test_scores # [[90, 95, 99, 100], [80, 85, 89], [70, 75, 79]]
    teacher_mailboxes.pop
    print teacher_mailboxes # [["Adam", "Baker", "Carter", "Mason"], ["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"]]
    # Removing from a specific index
    test_scores[0].pop
    print test_scores # [[90, 95, 99], [80, 85, 89], [70, 75, 79]]
    teacher_mailboxes[0].pop
    print teacher_mailboxes # [["Adam", "Baker", "Carter"], ["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"]]
    # Removing from the beginning of a nested array
    test_scores.shift
    print test_scores # [[80, 85, 89], [70, 75, 79]]
    teacher_mailboxes.shift
    print teacher_mailboxes # [["Davis", "Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"]]
    # Removing from a specific index
    test_scores[0].shift
    print test_scores # [[85, 89], [70, 75, 79]]
    teacher_mailboxes[0].shift
    print teacher_mailboxes # [["Erickson", "Fisher"], ["Garcia", "Harris", "Iverson"]]
    puts

# ITERATING OVER NESTED ARRAYS
teacher_mailboxes = [
  ["Adam", "Baker", "Carter"],
  ["Davis", "Erickson", "Fisher"],
  ["Garcia", "Harris", "Iverson"]
]
# Let's think the nested array which have rows and columns. Each row is the nested element and each column is the index of the nested element.
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row: #{row_index} = #{row}"
end

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, col_index|
    puts "Row: #{row_index}, Col: #{col_index} = #{teacher}"
  end
end

# USING flatten METHOD TO CONVERT NESTED ARRAY TO SINGLE ARRAY
print teacher_mailboxes.flatten # ["Adam", "Baker", "Carter", "Davis", "Erickson", "Fisher", "Garcia", "Harris", "Iverson"]
puts 
teacher_mailboxes.flatten.each do |teacher|
  print teacher + ", "
end
puts

test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

puts (test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end )
 # Alternaives collected from my stackoverflow-question:
puts(test_scores.any? do |scores| scores.all? { |score| score > 80 } end)
puts test_scores.any? { |scores| scores.all? { |score| score > 80 } }

puts test_scores.all? do |scores|
  scores.any? { |score| score > 80 }
end
# NESTED HASHES
vehicles = {
  alice: { year: 2019, make: "Toyota", model: "Corolla" },
  blake: { year: 2020, make: "Volkswagen", model: "Beetle" },
  caleb: { year: 2020, make: "Honda", model: "Civil" }
}
 # Accessing elements in a nested hash
puts vehicles[:alice][:year] # 2019

puts vehicles[:zoe] # nil
# puts vehicles[:zoe][:year] # NoMethodError: undefined method `[]' for nil:NilClass
puts vehicles[:alice][:color] #nil
puts vehicles.dig(:zoe, :year) # nil
puts vehicles.dig(:alice, :color) # nil

# ADDING & REMOVING ELEMENTS FROM NESTED HASHES
vehicles[:dave] = { year: 2021, make: "Ford", model: "Escape" }
puts vehicles
vehicles[:alice][:color] = "blue"
puts vehicles

vehicles.delete(:blake)
puts vehicles
vehicles[:dave].delete(:year)
puts vehicles
puts 
# METHODS FOR ITERATING OVER NESTED HASHES
vehicl = {
  alice: { year: 2019, make: "Toyota", model: "Corolla" },
  blake: { year: 2020, make: "Volkswagen", model: "Beetle" },
  caleb: { year: 2020, make: "Honda", model: "Civil" }
}

puts vehicles.select { |name, data| data[:year]&. >= 2020 }
