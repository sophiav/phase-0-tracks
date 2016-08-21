class TodoList
  attr_accessor :get_items

  def initialize(array)
    @get_items = ["do the dishes", "mow the lawn"]
  end

  def add_item(item)
    @get_items << item 
  end

  def delete_item(item)
    @get_items.delete(item)
  end

  def get_item(integer)
    get_items[integer]
      end


end
