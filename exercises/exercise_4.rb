require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store4 = Store.create(name: 'Surrey',
                      annual_revenue: 224000,
                      mens_apparel: false,
                      womens_apparel: true)

store5 = Store.create(name: 'Whistler',
                      annual_revenue: 1900000,
                      mens_apparel: true,
                      womens_apparel: false)

store6 = Store.create(name: 'Yaletown',
                      annual_revenue: 430000,
                      mens_apparel: true,
                      womens_apparel: true)


@men_stores = Store.where(mens_apparel: true)

@men_stores.each do |store|
  puts store.name
  puts store.annual_revenue
  puts
end

@women_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

@women_stores.each do |store|
  puts store.name
  puts store.annual_revenue
  puts
end