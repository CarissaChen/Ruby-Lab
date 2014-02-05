def count_words(string)
	#converts input with any word character into array words
	words = string.downcase.scan(/\w+/) 
	count = Hash.new(0) #creates hash with default 0
	#counts each element in count and assigns key to the hash
	words.each do |w|
		 count[w] +=1
	end
	return count
	
end

p count_words("A man, a plan, a canal -- Panama")
p count_words("Doo bee doo bee doo")
