class Fibonacci
  def initialize
    @memo = {}
  end

  def fib(pos)
    return pos if [1, 0].include?(pos)
    
    @memo[pos] ||= (fib(pos - 2) + fib(pos - 1))
  end
end

puts Fibonacci.new.fib(10000)