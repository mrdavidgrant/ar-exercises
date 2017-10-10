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
new_store = Store.new
puts "Please enter a store name: "
new_store.name = gets.chomp
new_store.save
puts new_store.errors.messages