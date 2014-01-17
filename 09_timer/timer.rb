class Timer 
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	hrs = (@seconds/3600).to_s.rjust(2,'0')
  	mins = ((@seconds%3600)/60).to_s.rjust(2,'0')
  	secs = (@seconds%60).to_s.rjust(2,'0')
  	time = "#{hrs}:#{mins}:#{secs}"
  end
end


