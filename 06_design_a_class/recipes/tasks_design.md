Tasks Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE
```Ruby 
class TodoList
  def initialize
  end

  def add(task) # task is a string
    # add taks to list
  end

  def print_list
    # print the list
  end

  def complete(task)
    # will remove the task from the list
    # will fail if task doesn't exist
  end
end
```
3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE
```Ruby
# 1
todo_list = TodoList.new
todo_list.add("")
todo_list.print_list # => []

# 2
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.print_list # => ["Walk the dog"]

# 3
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.add("Walk the cat")
todo_list.print_list # => ["Walk the dog", "Walk the cat"]

# 4
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.add("Walk the cat")
todo_list.complete("Walk the cat")
todo_list.print_list # => ["Walk the dog"]

# 5
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.complete("Wash the car") # => Fail "Not a task"
```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

