# can you pass a variable into a regex? if so, it might work well to create an array of funky phonemes
# and then iterate through that array for each word. 

def translate(string)
  vows = ["a","e","i","o","u"]
  cons = ("a".."z").to_a - vows

  to_be_pigged = string.split
  to_be_pigged.each_with_index do |word, index|
  	# checking for special case of qu phoneme
  	qu_removed = ""

  	if word.match(/(?i)qu/)
  	  qu_removed = word.slice!(/(?i)qu/)
  	end

  	if word.match(/(?i)\A[aeiou]/)
  	  to_be_pigged[index] = word + qu_removed + "ay"
  	elsif cons.include?(word[0]) && cons.include?(word[1]) && cons.include?(word[2])
  	  start_of_word = word.slice!(0,3)
  	  to_be_pigged[index] = word + start_of_word + qu_removed + "ay"
  	elsif cons.include?(word[0]) && cons.include?(word[1])
  	  start_of_word = word.slice!(0,2)
  	  to_be_pigged[index] = word + start_of_word + qu_removed + "ay"
  	elsif cons.include?(word[0])
  	  start_of_word = word.slice!(0,1)
  	  to_be_pigged[index] = word + start_of_word + qu_removed + "ay"
  	else
  	  word
  	end
  end
  to_be_pigged.join(" ")
end

