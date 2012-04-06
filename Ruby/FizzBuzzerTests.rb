require "FizzBuzzer"
require "test/unit"

class FizzBuzzerTests < Test::Unit::TestCase
   def setup
      @fb = FizzBuzzer.new()
   end

   def test_stringFor_returns_fizz_for_number_3
      assert_equal("fizz", @fb.stringFor(3))
   end

   def test_stringFor_returns_1_for_number_1
      assert_equal("1", @fb.stringFor(1))
   end
end
