require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

store1_update = Store.find_by(id:1)
@store1 = store1_update

store2_update = Store.find_by(id:2)
@store2 = store2_update

store1_update.name = "Square One"
store1_update.save
