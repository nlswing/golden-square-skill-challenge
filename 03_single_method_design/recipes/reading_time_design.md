# {{PROBLEM}} Method Design Recipe

## 1. Describe the problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute

## 2. Design the method solution

```ruby

reading_time = calculate_reading_time(_text)

# * text is a string with words in it
# * reading_time is a integer respresenting minutes 
```

## 3. Create Examples as Tests

```ruby
# 1
calculate_reading_time("")
# => 0

# 2
calculate_reading_time("one")
# => 0

# 3
calculate_reading_time("TWO_HUNDRED_WORDS")
# => 1

# 4
calculate_reading_time("THREE_HUNDRED_WORDS")
# => 2



