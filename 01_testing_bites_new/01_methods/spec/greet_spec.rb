# requiring the 'greet' file, so we're bring the method that we want in. 
require 'greet' # The top lines give a human description and act as documentation/
# RSpec.describe - this sets up a suite of tests - that tests a particular method (we can have as many)
RSpec.describe "greeting method" do # this describes what the suite is testing.
    it "returns the name given in the parameter in a greeting" do # this 'it block' reads as an assertion of what the describe should be doing
      result = greet("Dave")
      # Expect is special piece of RSpec....
      # I expect as the writer of the test this variable which I've assigned the variable "Dave" to equal "Hello, Dave!"
      expect(result).to eq "Hello, Dave!"
    end
end 

# break the original method to see if the test fails.
# this is called mutation testing.

