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

  def test_fib_pos_five
    assert @fibby.fib(5) == 5
  end

  def test_fib_pos_one_hundred
    assert @fibby.fib(100) == 354_224_848_179_261_915_075
  end
end
