# Kata Calculator
class KataCalculator
  def self.add(*nums)
    all_nums = []

    nums.each do |num|
      if num.is_a?(String)
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

        all_nums.concat(numbers.map(&:to_i))
      else
        # Default delimiter ','
        all_nums << num.to_i
      end
    end

    all_nums.sum
  end

  
end
