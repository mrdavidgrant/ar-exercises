require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.new
Surrey.name = 'Surrey'
Surrey.annual_revenue = 224000
Surrey.mens_apparel = false
Surrey.womens_apparel = true
Surrey.save

Whistler = Store.new
Whistler.name = 'Whistler'
Whistler.annual_revenue = 1900000
Whistler.mens_apparel = true
Whistler.womens_apparel = false
Whistler.save

Yaletown = Store.new
Yaletown.name = 'Yaletown'
Yaletown.annual_revenue = 430000
Yaletown.mens_apparel = true
Yaletown.womens_apparel = true
Yaletown.save

@mens_stores = Store.where( mens_apparel: true )
@mens_stores.each do |store|
  puts "#{store.name} has an annual revenue of #{store.annual_revenue}"
end