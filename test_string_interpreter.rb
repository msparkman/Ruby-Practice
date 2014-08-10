require 'minitest/autorun'
require_relative 'string_interpreter'

class TestStringInterpreter < MiniTest::Unit::TestCase
    def test_palindrome
		stringInterpreter = StringInterpreter.new ""
		refute stringInterpreter.palindrome?, "An empty string is not palindromes"
		
		stringInterpreter.word = "goodbye"
		refute stringInterpreter.palindrome?, "\"goodbye\" is not a palindrome"
		
		stringInterpreter.word = "Racecar"
		assert stringInterpreter.palindrome?, "\"Racecar\" is a palindrome"
		
		stringInterpreter.word = "Never a foot too far, even."
		refute stringInterpreter.palindrome?, "\"Never a foot too far, even.\" is a palindrome"
		
		stringInterpreter.word = 123321
		refute stringInterpreter.palindrome?, "Numbers are not palindromes"
		
		stringInterpreter.word = nil
		refute stringInterpreter.palindrome?, "nil is not a palindrome"
    end
end