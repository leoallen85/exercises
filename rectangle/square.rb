# Understands an equilateral four-sided polygon
require_relative './rectangle'
class Square < Rectangle

  def initialize(side)
    super(side, side)
  end
end

