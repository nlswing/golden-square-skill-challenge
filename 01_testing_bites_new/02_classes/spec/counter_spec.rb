require 'counter'

RSpec.describe Counter do
  it "intially reports a count of zero" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "takes a number as a parameter and adds to the inital count once" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "takes a number as a parameter and adds to the inital count several times" do
    counter = Counter.new
    counter.add(5)
    counter.add(3)
    counter.add(7)
    result = counter.report
    expect(result).to eq "Counted to 15 so far."
  end
  
end 
    
