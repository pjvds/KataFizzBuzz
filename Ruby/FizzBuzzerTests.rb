require "FizzBuzzer"
require "test/unit"

class FizzBuzzerTests < Test::Unit::TestCase
   def setup
      @fb = FizzBuzzer.new()
   end

   def test_stringFor_returns_fizz_for_number_3
      assert_equal("fizz", @fb.stringFor(3))
   end

   def test_stringFor_returns_buzz_for_number_5
      assert_equal("buzz", @fb.stringFor(5))
   end

   def test_stringFor_returns_1_for_number_1
      assert_equal("1", @fb.stringFor(1))
   end

   def test_stringFor_returns_fizz_for_every_number_divisible_by_three
      divisibleByThree = (1..100).find_all {|i| i%3==0}
      
      divisibleByThree.each do |number|
         assert_equal("fizz", @fb.stringFor(number))
      end
   end
end
