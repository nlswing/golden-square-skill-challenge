# {{PROBLEM}} Method Design Recipe

## 1. Describe the problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the method solution

```ruby

task_tracker = check_todo(text)

# * text is a string with words and characters
# * task_tracker will equate to either true or false
```

## 3. Create Examples as Tests

```ruby
# 1
task_tracker("")
# => false

# 2
task_tracker("#TODO")
# => true

# 3
task_tracker("#TODO Go to the shops")
# => true

# 4
task_tracker("TODO go to the shops")
# => false

# 5 
task_tracker("go to the shops")
# => false