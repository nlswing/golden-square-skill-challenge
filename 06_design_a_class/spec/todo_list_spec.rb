require "todo_list"

RSpec.describe TodoList do
  context "when nothing is added" do
    it "returns an empty list" do
    todo_list = TodoList.new
    todo_list.add("")
    expect(todo_list.print_list).to eq [""]
    end
  end

  context "when a string is added" do
    it "returns the string in a list" do
    todo_list = TodoList.new
    todo_list.add("Walk the dog")
    expect(todo_list.print_list).to eq ["Walk the dog"]
    end
  end

  context "when two strings are added" do
    it "returns the strings in a list" do
    todo_list = TodoList.new
    todo_list.add("Walk the dog")
    todo_list.add("Walk the cat")
    expect(todo_list.print_list).to eq ["Walk the dog", "Walk the cat"]
    end
  end

   context "when we complete a task" do
    it "removes that task from the a list" do
    todo_list = TodoList.new
    todo_list.add("Walk the dog")
    todo_list.add("Walk the cat")
    todo_list.complete("Walk the cat")
    expect(todo_list.print_list).to eq ["Walk the dog"]
    end
  end

  context "when we complete a non-existing task" do
    it "fails" do
    todo_list = TodoList.new
    todo_list.add("Walk the dog")
    todo_list.add("Walk the cat")
    expect { todo_list.complete("Wash the car") }.to raise_error "Not a task"
    end
  end 
end