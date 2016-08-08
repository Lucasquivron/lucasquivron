require_relative "pmu"

array_de_chevaux = []

puts "Ajouter un cheval"
  cheval = gets.chomp

while cheval != ""
  array_de_chevaux << cheval
  puts "Ajouter un cheval"
  cheval = gets.chomp
end

puts "Quel est votre pronostic?"
pronostic = gets.chomp

puts "Durée de la course en minutes"
min = gets.chomp.to_i

affichage_classement(array_de_chevaux, pronostic, min)

puts victoire(array_de_chevaux, pronostic, min)

