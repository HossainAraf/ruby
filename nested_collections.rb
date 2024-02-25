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
