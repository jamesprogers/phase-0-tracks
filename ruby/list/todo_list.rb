class TodoList

  def initialize(item1, item2)
    @list = [item1, item2]
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
    return @list
  end

end