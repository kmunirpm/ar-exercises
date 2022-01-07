require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Store Count: #{Store.all.count}"

store7 = Store.create(
  name: "Both False", 
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: false
)
store8 = Store.create(
  name: "Only one False",
  annual_revenue: 224000,
  mens_apparel: true,
  womens_apparel: false
)
puts "Store Count: #{Store.all.count}"

puts "please name a store"
name = gets.chomp

store9 = Store.create(name: name)

store9.errors.each do |field, error|
    puts "#{field} #{error}"
end

puts "Store Count: #{Store.all.count}"
