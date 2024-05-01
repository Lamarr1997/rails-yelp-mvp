# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
tickle_me = Restaurant.new(name: "Tickle me", address: "7 jamrock St, London SE2 7JE", category: "chinese")
tickle_me.save
patty_king = Restaurant.create(name: "Patty King", address: "22 beulah road, London CR1 6PQ", category: "italian")
true_flavours = Restaurant.create(name: "True Flavours", address: "64 clive road, London SE27 6PQ", category: "belgian")
flavour_boss = Restaurant.create(name: "Flavour Boss", address: "12 jackson road, London E1 6PQ", category: "french")
kfc = Restaurant.create(name: "kfc", address: "66 Whiteley road, London SE19 1JT", category: "japanese")

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end

puts tickle_me.address
puts "Finished!"
