class Book
  attr_accessor :title

  def title
    low_words = ["and","in","the","of","a","an"] 
    
    title_array = @title.split
    
    title_array.each_with_index do |word, index|
      title_array[index] = word.capitalize unless low_words.include?(word) 
  	end
  	
  	title_array[0].capitalize!
  	title_array.join(" ")
  end
end

