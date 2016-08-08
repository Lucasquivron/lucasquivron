require_relative "instacart"

list =
[
  { "name" => "tshirt", "quantity" => 1, "statut" => "checked" },
  { "name" => "short", "quantity" => 1, "statut" => "checked" },
  { "name" => "pantalon", "quantity" => 1, "statut" => "checked" },
  { "name" => "chemise", "quantity" => 1, "statut" => "checked" },
  { "name" => "chaussures", "quantity" => 1, "statut" => "checked" },
  { "name" => "chaussettes", "quantity" => 1, "statut" => "" },
]

    puts "Which product ?"
    name = gets.chomp
    puts "What do you want to do ? 'add', 'delete' or 'check' a product ?"
    request = gets.chomp
    if request == "add"
    puts "How many?"
    quantity = gets.chomp
      add_to_list(name, quantity, list)
    elsif request == "delete"
      remove_from_list(name, list)
    elsif request == "check"
      check_to_list(name, list)
    else
      puts " You did not 'add', 'delete' or 'check' a product"
    end
    p list

  while name != ""
    puts "Which product ?"
    name = gets.chomp
    puts "What do you want to do ? 'add', 'delete' or 'check' a product ?"
    request = gets.chomp
    if request == "add"
      puts "How many?"
      quantity = gets.chomp
      add_to_list(name, quantity, list)
    elsif request == "delete"
      remove_from_list(name, list)
    elsif request == "check"
      list = check_to_list(name,list)
    else
    puts " You did not 'add', 'delete' or 'check' a product"
    end
    p list
  end


