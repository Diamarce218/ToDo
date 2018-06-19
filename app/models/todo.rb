require 'uuid'

class Todo
  @@id = UUID.new
  @@todos = [
    id: 'cd799450-557e-0136-1029-54619d0558d4',
    title: 'Sinatra Rocks',
    description: 'Small but powerful'
  ]

  def self.add(item)
    item[:id] = @@id.generate
    @@todos << item
  end

  def self.all
    @@todos
  end

  def self.get(id)
    index = @@todos.index { |item| item[:id] == id }
    @@todos[index]
  end
#--------------------------------------------------------------------------------------------------


  def self.edit (id, attrs)
    index = @@todos.index { |item| item[:id] == id }
    @@todos[index].merge!(attrs)
  end
end
