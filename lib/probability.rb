# Understands the likelihood of something occurring
class Probability
  def initialize(weight)
    @weight = weight
  end

  def and(other)
    build(other.weight * weight)
  end

  def or(other)
    build(other.weight + weight - self.and(other).weight)
  end

  def not
    build(1 - weight)
  end

  def most_likely(*others)
    others.push(self).max
  end

  def ==(other)
    weight == other
  end

  def <=>(other)
    weight <=> other.weight
  end

  private

  def build(weight)
    self.class.new(weight)
  end

  protected

  attr_reader :weight
end
