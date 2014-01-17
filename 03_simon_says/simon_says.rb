def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, t = 2)
  string + (" #{string}" * (t - 1))
end

def start_of_word(string, x)
  string.slice(0,x)
end

=begin
 This works, but I want to try one with a regex.

 def first_word(string)
  arr = string.split
  arr[0]
 end
=end

#This also works, but is there any way to avoid having to chop it?

def first_word(string)
  string.slice(/^\S+\s+/).chop
end

=begin
def titleize(string)
  title = string.split

  title.each do |word|
  	word.capitalize! unless word == "the" || word  == "and" || word == "over"
  end

  title[0].capitalize!
  title.join(" ")
end
=end

# Thought of a better way to do the above. Have an array with words that need to stay lowercase.

def titleize(string)
  keep_lowercase = ["the","and","over"]
  title = string.split

  title.each do |word|
  	word.capitalize! unless keep_lowercase.include? word
  end

  title[0].capitalize!
  title.join(" ")
end