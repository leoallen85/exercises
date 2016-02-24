# Copyright 2016 by Fred George. May be copied with this notice, but not used in classroom training.

require 'minitest/autorun'
require 'minitest/pride'
require_relative './square'

# Confirms behavior of Rectangle
class SquareTest < Minitest::Test

  def test_area
    assert_equal(16, Square.new(4).area)
  end

  def test_perimeter
    assert_equal(32, Square.new(8).perimeter)
  end

  def test_invalid_square
    assert_raises(Exception) { Square.new(-3) }
  end

end
