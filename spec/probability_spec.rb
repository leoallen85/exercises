require "probability"

RSpec.describe Probability do
  subject(:first_probability) { described_class.new(0.5) }
  let(:second_probability) { described_class.new(0.4) }

  it "tests equality based on weight" do
    expect(first_probability == described_class.new(0.5)).to be true
  end

  it "calculates the combined probability of two independent events" do
    expect(first_probability.and(second_probability)).to eq(0.2)
  end

  it "calculates the probability of either of two events occuring" do
    expect(first_probability.or(second_probability)).to eq(0.9)
  end

  it "calculates the probability of this event not occuring" do
    expect(second_probability.not).to eq(0.6)
  end

  it "gives the most likely of a set of probs" do
    third_probability = described_class.new(0.2)
    expect(first_probability.most_likely(second_probability, third_probability)).to eq first_probability
  end
end
