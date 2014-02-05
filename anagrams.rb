def combine_anagrams(words)
	result = []
	
		#outside iterator of words
		words.each do |w1|
			temp = []
			#inside iterator of words to compare
			words.each do |w2|
				if w2.downcase.chars.sort == w1.downcase.chars.sort
					temp.push(w2)
				
				end
			end
			result.push(temp)
		end
	
	#removes all duplicates
	return result.uniq

end

p combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']) 
