class TodoList

def get_items
  list = ["do the dishes", "mow the lawn"]
  list
end

def add_item(item)
  list = ["do the dishes", "mow the lawn"]
  list << item
  return list
end

end