# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
la_brigade = { name: 'La Brigade', address: 'Oberkampf', phone_number: '0674930203', category: 'french' }
higuma = { name: 'Higuma', address: 'Sainte Anne', phone_number: '0747293720', category: 'japanese' }
la_felicita = { name: 'La Felicita', address: 'Turing', phone_number: '0123456789', category: 'italian' }
leon = { name: 'Léon', address: 'République', phone_number: '0987654321', category: 'belgian' }
tricotin = { name: 'Tricotin', address: 'Porte de Choisy', phone_number: '06274927312', category: 'chinese' }

[la_brigade, higuma, la_felicita, leon, tricotin].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
