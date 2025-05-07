require "./kata_calculator.rb"

RSpec.describe KataCalculator do
  it 'add empty string' do
    num1, num2 = ["", nil].sample
    result = KataCalculator.add(num1, num2)
    expect(result).to eq(0)
  end

  it 'adds only one number' do
    num1, num2 = ["", "1"]
    result = KataCalculator.add(num1, num2)
    expect(result).to eq(1)
  end

  it 'adds two string numbers' do
    num1, num2 = '1', '2'
    result = KataCalculator.add(num1, num2)
    expect(result).to eq(3)
  end

  it 'adds n number of digits' do
    num1, num2, num3 = '1', '2', '3'
    result = KataCalculator.add(num1, num2, num3)
    expect(result).to eq(6)
  end

  it 'accepts new line as delimiter' do
    nums = "1\n2,3"
    result = KataCalculator.add(nums)
    expect(result).to eq(6)
  end

  it 'supports different delimiters' do
    nums = "//;\n1;2"
    result = KataCalculator.add(nums)
    expect(result).to eq(3)
  end

  it 'raises exception for negative number' do
    expect { KataCalculator.add("1","-2") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
  end

  it 'raises exception for negative numbers' do
    expect { KataCalculator.add("1","1","-2","-3") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
  end
end
