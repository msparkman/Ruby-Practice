class StringInterpreter
	attr_accessor :string

	# Initialize the variable if one is not given upon object creation
	def initialize(string = "hello")
		@string = string
	end

	# Recursive check if the string is a palindrome
	def palindrome?(string = @string)
		if string.nil?
			return false
		elsif string.is_a? Numeric
			return false
		elsif string.length == 0 || string.length == 1
			return true
		else
			if string.respond_to?("downcase") && string.respond_to?("scan")
				string = string.downcase
				string = string.scan /\w/
			end
			
			if string[0] == string[string.length - 1]
				palindrome?(string[1, string.length - 2])
			else
				return false
			end
		end
	end
	
	# Other string interpreting methods go here
end