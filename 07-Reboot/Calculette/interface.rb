require_relative "calculate"
answer = "y"

while answer == "y"
  puts "Entrez un premier chiffre"
  x = gets.chomp.to_i
  puts "Entrez un deuxième chiffre"
  y = gets.chomp.to_i
  puts "Entrez un opérateur (+,-,*)"
  s = gets.chomp
  if s == "+" || s == "-" || s =="*"
    total = calculate(x,y,s)
  else
    puts "Erreur"
  end
    puts total
    puts " Voulez vous recommencer ? (y/n)"
    answer = gets.chomp
  end
