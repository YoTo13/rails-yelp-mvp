# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
khoi = { name: "Khoi", address: "place du sanglier - Aix en Provence", phone_number: "04 32 23 55 64", category: "japanese" }
mcdo = { name: "McDo", address: "route de berne", phone_number: "04 00 32 67 32", category: "belgian" }
mexicus = { name: "Mexicus", address: "22 rue jean - Paris", phone_number: "02 04 56 33 55", category: "italian" }
coconut = { name: "Coconut", address: "beach - fréjus", phone_number: "04 55 66 33 77", category: "chinese" }
maharaja = { name: "Maharaja", address: "rue du safran", phone_number: "05 33 55 66 44", category: "french" }

[ khoi, mcdo, mexicus, coconut, maharaja ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished !"
