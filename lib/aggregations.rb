module Aggregations
  def max(candidates)
    candidates.reduce do |champ, challenger|
      challenger > champ ? challenger : champ
    end
  end
end
