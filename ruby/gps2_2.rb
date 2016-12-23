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
  "This is the list #{list_hash}"
end

p list_create("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a method by using list as a hash, item name as a key and optional quantity as a value. To add an item, we add it as a key. To add a key, we pass the string of the list item through as a parameter for generating a new key and the optional quantity as the value. If no value is provided, the value will be the default value.
# output: This adds a new key with a new value. The value is either the optional quantity entered or, if no quantity entered, the default value. Print the updated list.

def add_item(new_item, opt_quant)
  list_hash = list_create("carrots apples cereal pizza")
  if opt_quant == nil
    opt_quant = 2
  end
  list_hash[new_item] = opt_quant
  "This is the list #{list_hash}"
end

p add_item("water", 3)
p add_item("beer", nil)

# Method to remove an item from the list
# input: item to be removed.
# steps: List the item to be remove, use a command that removes the key from the hash, which would remove any values associated with the key.
# output: Print the updated list.

def remove_item(item)
  list_hash = list_create("carrots apples cereal pizza")
  if list_hash.keys.include?(item)
    list_hash.delete(item)
  end
  "The updated list is #{list_hash}"
end

p remove_item("carrots")


# Method to update the quantity of an item
# input: item and item quantity
# steps: Create a method using the item and quantity as parameters. Locate the key parameter within the hash and replace the existing value associated with that key with the new quantity value. (Example: Change quantity of carrots from 2 to 3)
# output: Print the updated list.

def update_quant(item_key, quant_update)
  list_hash = list_create("carrots apples cereal pizza")
  new_hash = {}
  new_hash[item_key] = quant_update
  list_hash.merge(new_hash) {|item_key, old_quant, quant_update| quant_update}
end

p update_quant("carrots", 3)

# Method to print a list and make it look pretty
# input: the most up-to-date list
# steps: print the hash with language saying "this is our grocery list: ". Print each value and then print each key next to each value. Example: "2 carrots, 3 potatoes, etc..."
# output: Print the updated list in a readable format.
def print_list
  list_hash = list_create("carrots apples cereal pizza")
  puts "This is our grocery list: "
  list_hash.each do |item_key, quant_value|
    puts "#{item_key}: #{quant_value}"
  end
end

print_list

