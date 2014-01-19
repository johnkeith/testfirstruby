class RPNCalculator
  def initialize
    @stack = []
    @operators = ["+","-","*","/"]
  end

  def error_msg
    raise "calculator is empty"
  end

  def push(x)
    @stack << x
  end

  def plus
    if @stack.length == 0
      error_msg
    else
      @stack << @stack.pop + @stack.pop
    end
  end

  def minus
    if @stack.length == 0
      error_msg
    else
      sub_stack = @stack.pop(2)
      @stack << sub_stack[0] - sub_stack[1]
    end
  end

  def times
    if @stack.length == 0
      error_msg
    else
      @stack << (@stack.pop * @stack.pop).to_f
    end
  end

  def divide
    if @stack.length == 0
      error_msg
    else
      sub_stack = @stack.pop(2)
      @stack << sub_stack[0] / sub_stack[1].to_f
    end
  end

  def value
    if @stack.length == 0
      @error_msg
    else
      @stack[-1]
    end
  end

  def tokens(str)
    tok_arr = str.split
    tok_arr.each_with_index do |x,i|
      @operators.include?(x) ? tok_arr[i] = x.to_sym : tok_arr[i] = x.to_i
    end    
  end

  def evaluate(str)
    expression = tokens(str)
    expression.map! { |x| x.to_s }

    while expression.length > 0
      check_first = expression.shift
    
      if @operators.include? check_first
        sub_stack = @stack.pop(2)
        sub_stack.collect! { |x| x.to_f.to_s }
        @stack << eval(sub_stack[0] + check_first + sub_stack[1]).to_s
        p @stack
      else
        @stack << check_first
      end
    end
    @stack.pop.to_f
  end







end