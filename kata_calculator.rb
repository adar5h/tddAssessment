# Kata Calculator
class KataCalculator
  def self.add(*nums)
    all_nums = []

    nums.each do |num|
      if num.is_a?(String)
        # Split by newlines and commas
        numbers = num.split(/[\n,]/)
        all_nums.concat(numbers.map(&:to_i))
      else
        # Default delimiter ','
        all_nums << num.to_i
      end
    end

    all_nums.sum
  end
end
