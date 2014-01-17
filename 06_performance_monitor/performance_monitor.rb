def measure(x=1)
  time_passed = 0
  
  starting = Time.now
  
  x.times { yield }
  
  ending = Time.now
  
  time_passed = (ending - starting)/x
end