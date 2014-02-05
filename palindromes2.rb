
class String
	def palindrome? 
		sentence = self.downcase.scan(/\w/)
		sentence == sentence.reverse
	end
end



#creates Enumerable to use across multiple calsses for an array of numbers
module Enumerable
	def palindrome?
		self == self.reverse
		self.to_a == self.to_a.reverse
	end
end
		
p [1,2,3,2,1].palindrome?
