class Dictionary

  attr_accessor :entries
 
  def initialize
  	@entries = {}
  end

  def add(entry)
  	if entry.is_a?(Hash)
  	  entry.each { |k,v| @entries[k] = v }
  	else
  	  @entries[entry] = nil
  	end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
  	@entries.keys.include?(word)
  end

  def find(str)
  	@entries.select { |k,v| k.match(/#{str}/) }
  end

  # point of this question still eludes me
  def printable
  	print_this = []
  	@entries.each{ |k,v| print_this << "[#{k}] \"#{v}\"\n" }
  	print_this.sort.join.chomp.chomp
  end

end