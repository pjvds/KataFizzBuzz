class FizzBuzzer

   def stringFor(number)
      result=""
      if number % 3  == 0
         result += "fizz"
      end
      if number % 5 == 0
         result += "buzz"
      end

      if(result=="")
         result=number.to_s()
      end

      result
   end

end
