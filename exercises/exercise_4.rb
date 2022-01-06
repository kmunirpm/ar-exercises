require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store4 = Store.create(
  name: "Surrey",
  annual_revenue:  224000,
  mens_apparel: false,
  womens_apparel: true
)

store5 = Store.create(
  name: "Whistler",
  annual_revenue:  1900000,
  mens_apparel: true,
  womens_apparel: false
)

store6 = Store.create(
  name: "Yaletown",
  annual_revenue:  430000,
  mens_apparel: true,
  womens_apparel: true
)

puts "Store Count: #{Store.all.count}"

@mens_stores = Store.where(mens_apparel: true)
puts "Mens apparel - Store Count: #{@mens_stores.all.count}"

@mens_stores.each do |men|
  puts "store mens: #{men.name}, #{men.annual_revenue}"
end 

@womens_stores = Store.where(["womens_apparel = true AND annual_revenue < 1000000"])
puts "Womens apparel - Store Count: #{@womens_stores.all.count}"


@womens_stores.each do |women|
  puts "store womens: #{women.name}, #{women.annual_revenue}"
end