

def add_to_list(name, quantity, list)
  nouveau_produit = { "name" => name, "quantity" => quantity, "statut" => "" }
  list << nouveau_produit
end


def remove_from_list(name, list)
  list.each do |wish|
    if name == wish["name"]
      list.delete(wish)
    end
  end
end

def check_to_list(name, list)
  list.map do |h|
    if h["name"] == name
       h["statut"] = "checked"
    end
  end
end
