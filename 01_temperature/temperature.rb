def ftoc(fah)
  converted = (fah - 32)/(1.8)
  return converted.round
end

def ctof(cel)
  converted = (1.8 * cel) + 32
end