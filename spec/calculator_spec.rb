require 'calculator'

RSpec.describe Calculator do
  it 'adds two numbers' do
    calculator = Calculator.new

    expect(calculator.add(2, 3)).to eq 5
    expect(calculator.add(3, 4)).to eq 7
  end

  it 'prints the result' do
    calculator = Calculator.new
    printer = double

    expect(printer).to receive(:print).with(5)

    calculator.add(2, 3, printer)
  end
end