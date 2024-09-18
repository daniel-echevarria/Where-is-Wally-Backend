# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

charactersList = [
  { name: 'Waldo', x: 136, y: 740 },
  { name: 'Running Shoes', x: 650, y: 530 },
  { name: 'Lady With A Fan', x: 1000, y: 720 }
]

charactersList.each do |char|
  Personage.find_or_create_by(name: char[:name], x: char[:x], y: char[:y])
end
