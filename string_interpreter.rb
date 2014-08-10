class StringInterpreter
	attr_accessor :word

	# Initialize the variable if one is not given upon object creation
	def initialize(word = "hello")
		@word = word
	end

	# check if the word is a palindrome
	def palindrome?
		if @word.nil?
			return false
		elsif @word.is_a? Numeric
			return false
		elsif @word.empty?
			return false
		else
			if @word.respond_to? "downcase"
				@word = @word.downcase
				if @word.respond_to? "scan"
					@word = @word.scan /\w/
					if @word.respond_to? "reverse"
						return @word == @word.reverse
					end
				end
			end
			
		end
	end
	# Recursive alternative
	#def palindrome?
	#	if @word.nil?
	#		false
	#	elsif @word.length == 1 || @word.length == 0
	#		true
	#	else
	#		if @word[0] == @word[-1]
	#			palindrome?(@word[1..-2])
	#		else
	#			false
	#		end
	#	end
	#end
	
	#def 
end

/if __FILE__ == $0
	wordAnalyzer = WordAnalyzer.new "goodbye"
	wordAnalyzer.palindrome?

	# Change word to be a palindrome
	wordAnalyzer.word = "Racecar"
	wordAnalyzer.palindrome?

	# Change to a palindromic sentence
	wordAnalyzer.word = "Never a foot too far, even."
	wordAnalyzer.palindrome?
	
	# Change the word to an empty string
	wordAnalyzer.word = ""
	wordAnalyzer.palindrome?
  
	# Change to nil
	wordAnalyzer.word = nil
	wordAnalyzer.palindrome
end/