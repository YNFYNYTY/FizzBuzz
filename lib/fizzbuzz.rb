class FizzBuzz
	def game(number)
		@final = ""
		@setOfRules = {
			"GOD!!" => lambda { number == 47 },
			"Fizz" => lambda { number % 3 == 0 },
			"Buzz" => lambda { number % 5 == 0 },
			"Zazz" => lambda { number % 7 == 0 },
			"Nike" => lambda { number % 13 == 0 },
			"Blu" => lambda { number.to_s.include? "1" }
		}
		andJusticeForAll(number)
		return number.to_s if @final.empty?
		return @final
	end
	def andJusticeForAll(number)
		# binding.pry
		@setOfRules.each do |key, lambda|
			@final += key if lambda.call
		end
	end
end



# 3 fizz
# 5 buzz
# 7 zazz
# 13 nike
# if it contains 1 BLUBLU
# EXACT 47 GOD!!