require_relative '../config/environment'

# Age Validation fail case
puts "Validation fail case for Age < 20"
puts "Ronald = Account.find_by first_name: \"Ronald\""
puts "Ronald.age = 5"
puts "Ronald.save"
puts "p Ronald = Account.find_by first_name: \"Ronald\""
Ronald = Account.find_by first_name: "Ronald"
Ronald.age = 5
Ronald.save
p Account.find_by first_name: "Ronald"
puts ""

# Age Validation pass case
puts "Validation pass case for Age"
puts "Ronald = Account.find_by first_name: \"Ronald\""
puts "Ronald.age = 61"
puts "Ronald.save"
puts "p Ronald = Account.find_by first_name: \"Ronald\""
Ronald = Account.find_by first_name: "Ronald"
Ronald.age = 61
Ronald.save
p Account.find_by first_name: "Ronald"
puts ""

# Gender validation fail case
puts "Validation fail case for gender"
puts "Joyce = Account.find_by first_name: \"Joyce\""
puts "Joyce.gender = \"WHO\""
puts "Joyce.save"
puts "p Joyce = Account.find_by first_name: \"Joyce\""
Joyce = Account.find_by first_name: "Joyce"
Joyce.gender = "WHO"
Joyce.save
p Account.find_by first_name: "Joyce"
puts ""

# Gender Validation pass case
puts "Validation fail case for gender"
puts "Joyce = Account.find_by first_name: \"Joyce\""
puts "Joyce.gender = \"N/A\""
puts "Joyce.save"
puts "p Joyce = Account.find_by first_name: \"Joyce\""
Joyce ||= Account.find_by first_name: "Joyce"
Joyce.gender = "N/A"
Joyce.save
p Account.find_by first_name: "Joyce"
puts ""



puts "Printing TodoList in ascending order"
p TodoList.all
puts ""

puts "Printing TodoItem in ascending order"
p TodoItem.all
