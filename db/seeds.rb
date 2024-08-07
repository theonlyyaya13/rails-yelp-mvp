# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: "Le Gourmet Français", address: "50 Rue de Vaugirard, 75006 Paris", phone_number: "0134567890", category: "french" },
  { name: "Tokyo Delight", address: "120 Rue de l'Université, 75007 Paris", phone_number: "0134567891", category: "japanese" },
  { name: "La Bella Pasta", address: "35 Boulevard Saint-Germain, 75005 Paris", phone_number: "0134567892", category: "italian" },
  { name: "Dragon Rouge", address: "75 Avenue de Choisy, 75013 Paris", phone_number: "0134567893", category: "chinese" },
  { name: "Bruxelles Bistro", address: "10 Rue de Bruxelles, 75009 Paris", phone_number: "0134567894", category: "belgian" },
  { name: "Chez Maurice", address: "100 Rue de Rennes, 75006 Paris", phone_number: "0134567895", category: "french" },
  { name: "Sakura Sushi", address: "200 Rue Saint-Honoré, 75001 Paris", phone_number: "0134567896", category: "japanese" },
  { name: "Mamma Mia", address: "80 Avenue de la République, 75011 Paris", phone_number: "0134567897", category: "italian" },
  { name: "Le Dragon Vert", address: "60 Rue de Belleville, 75020 Paris", phone_number: "0134567898", category: "chinese" },
  { name: "Belgian Delight", address: "90 Rue du Faubourg Saint-Denis, 75010 Paris", phone_number: "0134567899", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "#{restaurants.count} restaurants have been created!"
