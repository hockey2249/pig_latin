VOWEL = [
	"a", 
	"e", 
	"i", 
	"o", 
	"u"
]

class Word
	def initialize(original_word)
		@original_word = original_word
		@word_array = original_word.chars.to_a
		@vowel_array = VOWEL
	end
	
	def original_word
		return @original_word.downcase
	end

	def piglatinize 
		if @word_array[0] == "a" || @word_array[0] == "e" || @word_array[0] == "i" || @word_array[0] == "o" || @word_array[0] == "u"
			return @original_word + "way"
		elsif @word_array[2] == "a" || @word_array[2] == "e" || @word_array[2] == "i" || @word_array[2] == "o" || @word_array[2] == "u"
			@first_letter = @original_word[0]
			@second_letter = @original_word[1] 
			@original_word.slice!(0)
			@original_word.slice!(0)
			return @original_word + @first_letter + @second_letter + "ay"		
		else
			@first_letter = @original_word[0] 
			@original_word.slice!(0)
			return @original_word + @first_letter + "ay"
		end
		else
	end		
end

