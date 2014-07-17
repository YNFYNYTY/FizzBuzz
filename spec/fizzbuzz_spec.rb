require_relative '../lib/fizzbuzz'

describe "FizzBuzz game" do

	it "must return itself when no multiple" do
		expect(FizzBuzz.new.game(1)).to eq("Blu")
	end

	it "must return Fizz when 3" do
		expect(FizzBuzz.new.game(3)).to eq("Fizz")
	end

	it "must return Buzz when 5" do
		expect(FizzBuzz.new.game(5)).to eq("Buzz")
	end

	it "must return Buzz when 7" do
		expect(FizzBuzz.new.game(7)).to eq("Zazz")
	end

	it "must return FizzZazz when 21" do
		expect(FizzBuzz.new.game(21)).to eq("FizzZazzBlu")
	end

	it "must return Blu when number contains 1" do
		expect(FizzBuzz.new.game(17)).to eq("Blu") 
	end

	it "must return GOD!! when number is 47" do
		expect(FizzBuzz.new.game(47)).to eq("GOD!!") 
	end

end

