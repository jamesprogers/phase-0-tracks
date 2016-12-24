# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split string characters separated by spaces into hash keys, and in each key is an item equal to the default quantity
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def list_create(list_item)
  list_arr = list_item.split(" ")
  list_hash = {}
  list_arr.each do |key_convert|
    default_value = 2
    list_hash[key_convert] = default_value
  end
  return list_hash
end



# Method to add an item to a list
# input: list hash, item name, and optional quantity
# steps: create a method by using list as a hash, item name as a key and optional quantity as a value. To add an item, we add it as a key. To add a key, we pass the string of the list item through as a parameter for generating a new key and the optional quantity as the value. If no value is provided, the value will be the default value.
# output: This adds a new key with a new value. The value is either the optional quantity entered or, if no quantity entered, the default value. Print the updated list.


def add_item(list, new_item, opt_quant)
  list_hash = list
  if opt_quant == nil
    opt_quant = 2
  end
  list_hash[new_item] = opt_quant
  "#{list_hash}"
end



# Method to remove an item from the list
# input: list, item to be removed.
# steps: List the item to be remove, use a command that removes the key from the hash, which would remove any values associated with the key.
# output: Print the updated list.

def remove_item(list, item)
  list_hash = list_create(list)
  if list_hash.keys.include?(item)
    list_hash.delete(item)
  end
  "#{list_hash}"
end




# Method to update the quantity of an item
# input: list, item to be updated and the new item quantity
# steps: Create a method using the item and quantity as parameters. Locate the key parameter within the hash and replace the existing value associated with that key with the new quantity value. (Example: Change quantity of carrots from 2 to 3)
# output: Print the updated list.

def update_quant(list, item_key, quant_update)
  list_hash = list_create(list)
  new_hash = {}
  new_hash[item_key] = quant_update
  list_hash.merge(new_hash) {|item_key, old_quant, quant_update| quant_update}
end


# Method to print a list and make it look pretty
# input: the most up-to-date list
# steps: print the hash with language saying "this is our grocery list: ". Print each value and then print each key next to each value. Example: "2 carrots, 3 potatoes, etc..."
# output: Print the updated list in a readable format.
def print_list(list)
  list_hash = list_create(list)
  puts "This is our grocery list: "
  list_hash.each do |item_key, quant_value|
    puts "#{item_key}: #{quant_value}"
  end
end






p list_create("carrots apples cereal pizza")

p add_item({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2}, "Lemonade", 2)
p add_item(list_create("carrots apples cereal pizza"), "Lemonade", 2)

p add_item({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2, "Lemonade"=>2}, "Tomatoes", 3)
p add_item(add_item(list_create("carrots apples cereal pizza"), "Lemonade", 2), "Tomatoes", 3)


add_item({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2, "Lemonade"=>2, "Tomatoes"=>3}, "Onions", 1)
add_item({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2, "Lemonade"=>2, "Tomatoes"=>3, "Ice Cream"=>4})
remove_item({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2, "Lemonade"=>2, "Tomatoes"=>3, "Ice Cream"=>4}, "Lemonade")
update_quant({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2, "Tomatoes"=>3, "Ice Cream"=>4},"Ice Cream", 1)
print_list({"carrots"=>2, "apples"=>2, "cereal"=>2, "pizza"=>2, "Tomatoes"=>3, "Ice Cream"=>1})


