RSpec.describe KataCalculator do
  it 'add empty string' do
    num1, num2 = ["", nil].sample
    result = KataCalculator.add(num1, num2)
    expect(result).to eq(0)
  end
end
