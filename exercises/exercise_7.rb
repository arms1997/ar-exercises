require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# @store1 = Store.find_by(id: 1)
# puts @store1
# employee = @store1.employees.create

# employee.save!

@new_store = Store.create(name: "Hobos", annual_revenue: 10000, mens_apparel:true)

@new_store.save!