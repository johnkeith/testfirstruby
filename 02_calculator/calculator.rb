def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(arr)
  if arr.empty?
    return 0
  else 
# is the argument needed with inject? it passes without, but is it assuming 0?
    arr.inject { |x,y| x + y }
  end
end

# extra credit!
def multiply(arr)
  arr.inject(1) { |x,y| x * y }
end

def power(x,y)
  x ** y
end

# is this the best way? There must be something more...Ruby?
def factorial(n)
  if n == 0 || n == 1 
  	return 1
  else
    numbers = []
    n.downto(1) { |x| numbers << x }
    numbers.inject(1) { |x,y| x * y }
  end
end