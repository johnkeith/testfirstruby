class Array
  def sum
  	self.empty? ? 0 : self.inject(0) { |x,y| x + y }
  end

  def square
  	self.empty? ? [] : self.collect { |x| x ** 2 }
  end

  def square!
  	self.empty? ? [] : self.collect! { |x| x ** 2 }
  end
end