def caesar_cipher(string, x)
	alphabet = "abcdefghijklmnopqrstuvwxyz".split('')
	userInput = string.split('')
	userInput.each_with_index do |c, i|
		 position = alphabet.index(c.downcase)
		 userInput[i] = alphabet[(position + x + 26) % 26] if position
		 userInput[i] = userInput[i].upcase if c == c.upcase
	end
	userInput.join("")
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("What a string!", -5)
puts caesar_cipher("What a string!", 50)
