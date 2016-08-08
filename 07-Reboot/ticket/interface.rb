require_relative "ticket"

PRODUIT_EN_MAGASIN =
{
  "Banane" => 2,
  "Fraise" => 3,
  "Pomme" => 4,
  "Radis" => 4,
  "Sel" => 5,
  "Sucre" => 6,
  "Moutard" => 7,
  "Ketchup" => 6,
  "Viande" => 8,
  "Cassis" => 6,
  "Lait" => 11,
  "Coca" => 12,
  "Chips" => 10,
  "Sucette" => 12,
  "Chocolat" => 10,
  "Cigarettes" => 6,
}

puts "Ajouter Produit"
produit = gets.chomp
puts "Ajouter Quantité"
quantity = gets.chomp.to_i

liste_des_courses = Hash.new
while  PRODUIT_EN_MAGASIN[produit]

mettre_au_panier(produit, quantity, liste_des_courses)
puts "Ajouter Produit"
produit = gets.chomp
puts "Ajouter Quantité"
quantity = gets.chomp.to_i
end

liste_des_courses.each do |produit, quantity|
  puts "#{produit} - #{quantity}"
end


# PRODUIT_EN_MAGASIN.each do |key, value|
#   puts " #{key} - #{value}€"
#   end
#   LISTE_DES_COURSES = Hash.new
# puts "\nAjouter un produit"
#   produit = gets.chomp
# puts "Ajouter une quantité\n"
#   quantity = gets.chomp
#   mettre_au_panier(produit, quantity)

# while produit != ""
#   liste_des_courses = []
#   puts "\nAjouter un produit"
#   produit = gets.chomp
#   puts "Ajouter une quantité\n"
#   quantity = gets.chomp
# end

# LISTE_DES_COURSES.each do |key, value|
#   puts " #{key} - #{value}€"
#   end

