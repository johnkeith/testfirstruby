class Temperature
  # attr_accessor :f, :c

  # http://stackoverflow.com/questions/13303401/quickly-setting-instance-variables-with-options-hash-in-ruby
  def initialize(options={})
  	options.each do |k,v|
  	  instance_variable_set("@#{k}", v)
  	end
  end

  def ftoc
    (@f - 32) * 5/9
  end

  def ctof
    (@c.to_f * 9/5) + 32
  end


  def in_fahrenheit
  	converted = @f == nil ? ctof : @f
  end

  def in_celsius
  	converted = @c == nil ? ftoc : @c
  end


  def Temperature.from_celsius(t)
  	Temperature.new(:c => t)
  end

  def Temperature.from_fahrenheit(t)
  	Temperature.new(:f => t)
  end
end

class Celsius < Temperature
  def initialize(tempc)
  	@c = tempc
  end
end

class Fahrenheit < Temperature
  def initialize(tempf)
  	@f = tempf
  end
end

