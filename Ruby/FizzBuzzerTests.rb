require "FizzBuzzer"
require "test/unit"

class FizzBuzzerTests < Test::Unit::TestCase
   @@fizz = "fizz"
   @@buzz = "buzz"
   @@fizzbuzz = @@fizz+@@buzz

   def setup
      @fb = FizzBuzzer.new()
   end

   def test_stringFor_returns_fizz_for_number_3
      assert_equal(@@fizz, @fb.stringFor(3))
   end

   def test_stringFor_returns_buzz_for_number_5
      assert_equal(@@buzz, @fb.stringFor(5))
   end

   def test_stringFor_returns_1_for_number_1
      assert_equal("1", @fb.stringFor(1))
   end

   def test_stringFor_returns_fizz_for_every_number_divisible_by_three
      divisibleByThree = (1..100).find_all {|i| i%3==0 && i%5!=0}
      
      divisibleByThree.each do |number|
         assert_equal(@@fizz, @fb.stringFor(number))
      end
   end

   def test_stringFor_returns_buzz_for_every_number_divisible_by_five
      divisibleByFive = (1..100).find_all {|i| i%5==0 && i%3!=0}
      
      divisibleByFive.each do |number|
         assert_equal(@@buzz, @fb.stringFor(number))
      end
   end

   def test_stringFor_returns_fizzbuzz_for_every_number_divisible_by_three_and_five
      divisibleByThreeAndFive = (1..100).find_all {|i| i%3==0 && i%5==0}

      divisibleByThreeAndFive.each do |number|
         assert_equal(@@fizzbuzz, @fb.stringFor(number))
      end
   end
end
