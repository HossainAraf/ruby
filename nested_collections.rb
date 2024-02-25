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