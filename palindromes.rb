#Part2: Palindromes

def palindrome?(string)
	#sentence takes the input, makes it lowercase and finds any word character
	sentence = string.downcase.scan(/\w/)
	sentence == sentence.reverse
end

p palindrome?("A man, a plan, a canal -- Panama")
p palindrome?("Madam, I'm Adam!")
p palindrome?("Abracadabra")
