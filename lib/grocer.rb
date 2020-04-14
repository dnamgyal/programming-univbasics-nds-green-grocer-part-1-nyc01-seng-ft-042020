require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = nil
  collection.each do |val|
    if val[:item] == name
      item = val
    end
  end
  item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each do |val|
    if find_item_by_name_in_collection(val[:item], new_cart) == nil

      val[:count] = 1
      new_cart << item
    else
      index = new_cart.find_index(val[:item])
      new_cart[index][:count] += 1
    end
  end
  new_cart
end
