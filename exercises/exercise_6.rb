require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Armeen", last_name: "Hadizadeh", hourly_rate: 60)
@store1.employees.create(first_name: "Aryan", last_name: "Hadizadeh", hourly_rate: 10)
@store1.employees.create(first_name: "Homa", last_name: "Ashrafpour", hourly_rate: 40)

@store1.employees.each {|x| puts "#{x.first_name}"}