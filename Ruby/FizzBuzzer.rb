class FizzBuzzer

   def stringFor(number)
      result=""
      if isFizz(number) then result += "fizz" end
      if isBuzz(number) then result += "buzz" end
      
      return (result=="") ? number.to_s() : result
   end

   def isFizz(number)
      (number % 3 == 0)
   end

   def isBuzz(number)
      (number % 5 == 0)
   end
end
