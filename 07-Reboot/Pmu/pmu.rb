

def affichage_classement(array_de_chevaux, pronostic, min)
 t = 0
 while t < min
  random(array_de_chevaux, t)
  t = t + 1
 end
end

def random(array_de_chevaux,min)
 sleep(3)
 s = array_de_chevaux.size
 new_array = array_de_chevaux.shuffle
 puts "\nClassement au bout de #{min} minutes : "
 new_array.each_with_index do |cheval, index|
 puts "#{index + 1} - #{cheval}"
 end
puts "Pour l'instant #{new_array[0]} est en tête ..."
return new_array
end


def victoire(array_de_chevaux, pronostic, min)
new_array = random(array_de_chevaux, min)
sleep(2)
if new_array[0] == pronostic
  puts "Tu as gagné. Comme tu l'as parié, le cheval #{new_array[0]} est arrivé premier."
 else
  puts "Tu as perdu. Le cheval #{new_array[0]} est arrivé premier. Tu avais parié pour #{pronostic}."
 end
end
