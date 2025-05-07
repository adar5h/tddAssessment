# Kata Calculator
class KataCalculator
  def self.add(*nums)
    all_nums = []

    nums.each do |num|
      if num.is_a?(String)
        nums = delimiter_specified?(num)
        all_nums.concat(nums)
      else
        # Default delimiter ','
        all_nums << num.to_i
      end
    end

    negatives = []
    all_nums.each do |i|
      if i.to_i.negative?
        negatives << i
      elsif i >= 1000
        all_nums.delete(i)
      end
    end

    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?

    all_nums.sum
  end

  def self.delimiter_specified?(num)
    delimiter = nil
    numbers_string = num

    if num.start_with?('//')
      delimiter_line, numbers_string = num.split("\n", 2)
      delimiter = delimiter_line[2..] # Removed the \\ part
    end

    numbers = if delimiter
                numbers_string.split(delimiter)
              else
                num.split(/[\n,]/)
              end

    numbers.map(&:to_i)
  end
end
