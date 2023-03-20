require_relative "../lib/password_checker"

RSpec.describe PasswordChecker do
    it "check for valid length of 8+" do
        password_checker = PasswordChecker.new
        expect(password_checker.check("pigsmightfly")).to eq true
    end

    it "when password length is less than 8" do
        password_checker = PasswordChecker.new
        expect{ password_checker.check("pigsfly") }.to raise_error("Invalid password, must be 8+ characters.")
    end
end