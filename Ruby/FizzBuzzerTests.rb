require "FizzBuzzer"
require "test/unit"

class FizzBuzzerTests < Test::Unit::TestCase

   def test_stringFor_returns_fizz_for_number_3
      fb = FizzBuzzer.new()
      assert_equal("fizz", fb.stringFor(3))
   end

end
