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
  puts teacher_mailboxes[3][0] # NoMethodError: undefined method `[]' for nil:NilClass
  puts teacher_mailboxes[0][3] # nil
  # dig METHOD TO ACCESS NON-EXISTENT ELEMENTS TO AVOID NoMethodERROR
  puts teacher_mailboxes.dig(3, 0) # nil
  puts teacher_mailboxes.dig(0, 3) # nil