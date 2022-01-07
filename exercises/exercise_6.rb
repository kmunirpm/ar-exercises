require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 59)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 58)
@store1.employees.create(first_name: "Cait", last_name: "Morgan", hourly_rate: 57)
@store1.employees.create(first_name: "Morgan", last_name: "Jones", hourly_rate: 56)
@store2.employees.create(first_name: "Steven", last_name: "Jones", hourly_rate: 55)
@store2.employees.create(first_name: "Steven", last_name: "Smith", hourly_rate: 54)
@store2.employees.create(first_name: "Micheal", last_name: "Clarke", hourly_rate: 53)
@store2.employees.create(first_name: "Carl", last_name: "Hooper", hourly_rate: 52)
@store2.employees.create(first_name: "Brian", last_name: "Lara", hourly_rate: 51)

puts "Employee Count: #{Employee.all.count}"
