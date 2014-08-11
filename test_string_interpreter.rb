require 'minitest/autorun'
require_relative 'string_interpreter'

class TestStringInterpreter < MiniTest::Unit::TestCase
    def test_palindrome
		stringInterpreter = StringInterpreter.new ""
		assert stringInterpreter.palindrome?, "An empty string is a palindrome"
		
		stringInterpreter.string = "goodbye"
		refute stringInterpreter.palindrome?, "\"goodbye\" is not a palindrome"
		
		stringInterpreter.string = "Racecar"
		assert stringInterpreter.palindrome?, "\"Racecar\" is a palindrome"
		
		stringInterpreter.string = "Never a foot too far, even."
		assert stringInterpreter.palindrome?, "\"Never a foot too far, even.\" is a palindrome"
		
		stringInterpreter.string = 123321
		refute stringInterpreter.palindrome?, "Numbers are not palindromes"
		
		stringInterpreter.string = nil
		refute stringInterpreter.palindrome?, "nil is not a palindrome"
    end
end