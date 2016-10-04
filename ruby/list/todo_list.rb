class TodoList
  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(item)
    @array.push(item)
  end

  def delete_item(item)
    @array.delete(item)
  end

  def get_item(index)
    @array[index]
  end
end

# class TodoList
#   attr_accessor :todo_list

#   def initialize(array)
#     @todo_list = ["do the dishes", "mow the lawn"]
#   end

#   def add_item(item)
#     @todo_list.push(item)
#   end

#   def delete_item(item)
#     @todo_list.delete(item)
#   end

#   def get_item(index)
#     @todo_list[index]
#       end

#   def get_items
#     @todo_list
#   end
# end
