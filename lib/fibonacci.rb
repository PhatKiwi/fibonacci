# frozen_string_literal: true

# Fibonacci with Memoization
class Fibonacci
  def initialize
    @memo = {}
  end

  def fib(pos)
    return pos if [1, 0].include?(pos)

    @memo[pos] ||= (fib(pos - 2) + fib(pos - 1))
  end

  def print_the_fib(pos)
    (1..pos).each do |n|
      puts fib(n)
      puts ''
    end
  end
end

puts "the answer: #{Fibonacci.new.fib(17_468)}"