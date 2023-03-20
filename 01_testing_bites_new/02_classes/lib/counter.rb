class Counter
  # starts of with 0
  def initialize
    @count = 0
  end
  # takes a number as a parameter and adds to initial count
  def add(num)
    @count += num
  end
  # reports the total of the number that has been added to the initial count
  def report
    return "Counted to #{@count} so far."
  end
end

