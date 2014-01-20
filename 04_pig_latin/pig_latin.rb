def translate(string)
  vows = %w[a e i o u A E I O U]
  to_be_pigged = string.split

  to_be_pigged.map! do |word|

    add_to_end = []
    punc = ""
    caps = false

    punc = word.slice!(/[\?\.\!]/) if word.match(/[\?\.\!]/)

    word.match(/[A-Z]/) ? caps = true : caps = false

    while ! vows.include? word[0]
      word[0] == "q" ? add_to_end << word.slice!(0,2) : add_to_end << word.slice!(0,1)
    end

    if caps == true
      word = (word + add_to_end.join + "ay" + punc).downcase.capitalize
    else
      word = word + add_to_end.join + "ay" + punc
    end

    word

  end
  to_be_pigged.join(" ")
end

# lots of other iterations below. came back to this one at the end

=begin
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
=end
=begin
def translate(string)
  vows = %w[a e i o u A E I O U]
  cons_up = ("A".."Z").to_a - vows
  cons_low = ("a".."z").to_a - vows

  to_be_pigged = string.split
  p to_be_pigged
  
  to_be_pigged.map! do |word|
    
    word_a = word.split(//)
    p word_a
    
    add_to_end = []

    word_a.each do |letter|
      if letter.match(/(?i)\A[aeiou]/)
        word = word_a.join + add_to_end.join + "ay"
      elsif letter.match(/(?i)\A[q]/)
        add_to_end << word_a.slice!(0,2)
      else
        add_to_end << word_a.slice!(0,1)
      end
    end

  end

  p to_be_pigged.join(" ")
end
=end
=begin
def translate(string)
  vows = %w[a e i o u A E I O U]
  to_be_pigged = string.split

  to_be_pigged.map! do |word|
    add_to_end = []
    
    while ! vows.include? word[0]
      word[0] == "q" ? add_to_end << word.slice!(0,2) : add_to_end << word.slice!(0,1)
    end

    word = word + add_to_end.join + "ay"
  end
  to_be_pigged.join(" ")
end
=end
   

