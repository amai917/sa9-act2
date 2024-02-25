class TodoList
  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def remove(todo)
    @todos.delete(todo)
  end

  def todos
    @todos.dup
  end
end

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      list = TodoList.new
      list.add('todo1')
      expect(list.todos).to include('todo1')
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      list = TodoList.new
      list.add('todo1')
      list.remove('todo1')
      expect(list.todos).not_to include('todo1')
    end
  end

  describe "#todos" do
    it "returns all todos" do
      list = TodoList.new
      list.add('todo1')
      list.add('todo2')
      expect(list.todos).to match_array(['todo1', 'todo2'])
    end
  end
end
