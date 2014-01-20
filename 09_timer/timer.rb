class Timer 
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def padded(n)
    n.to_s.rjust(2,'0')
  end

  def time_string
  	hrs = padded(@seconds/3600)
  	mins = padded(@seconds%3600/60)
  	secs = padded(@seconds%60)
  	time = "#{hrs}:#{mins}:#{secs}"
  end

  
end


