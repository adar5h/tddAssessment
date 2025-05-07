# Kata Calculator
class KataCalculator
  def self.add(*nums)
    nums = nums.map(&:to_i)

    nums.sum
  end
end
