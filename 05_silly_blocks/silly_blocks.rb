def reverser
  split_block = yield.split
  split_block.each_with_index do |item, index| 
  	split_block[index] = item.reverse
  end
  split_block.join(" ")
end
  
def adder(n = 1)
  yield + n  
end

def repeater(n = 1)
  n.times { yield }
end
