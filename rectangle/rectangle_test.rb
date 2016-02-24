# Copyright 2016 by Fred George. May be copied with this notice, but not used in classroom training.

require 'minitest/autorun'
require_relative './rectangle'

# Confirms behavior of Rectangle
class RectangleTest < Minitest::Test

  def test_area
    assert_equal(24, Rectangle.new(4, 6).area)
  end

  def test_perimeter
    assert_equal(20, Rectangle.new(4, 6).perimeter)
  end

  def test_invalid_rectangle
    assert_raises(Exception) { Rectangle.new(-1, 2) }
  end

  def test_max
    rectangles = [
      Rectangle.new(2,5),
      Rectangle.new(3,6),
      Rectangle.new(1,1)
    ]

    max = Rectangle.max(rectangles)
    assert_equal(max, rectangles[1]max)
  end
end
