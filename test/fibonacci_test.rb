# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/fibonacci'

class FibonacciTest < Minitest::Test
  def setup
    @fibby = Fibonacci.new
  end

  def test_return_one
    assert @fibby.fib(1) == 1
  end

  def test_fib_pos_5
    assert @fibby.fib(5) == 5
  end

  def test_fib_pos_100
    assert @fibby.fib(100) == 354224848179261915075
  end
end
