require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

store1_update = Store.find_by(id:1)
store1_update = @store1

store2_update = Store.find_by(id:2)
store2_update = @store2

store1_update2 = Store.find_by(@store1)
store1_update2.name = "Coquitlam"
store1_update2.save