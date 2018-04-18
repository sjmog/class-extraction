require 'calculator'

RSpec.describe Calculator do
  it 'adds two numbers' do
    printer = double(print: nil)
    calculator = Calculator.new(printer)

    expect(calculator.add(2, 3)).to eq 5
    expect(calculator.add(3, 4)).to eq 7
  end

  it 'prints the result' do
    printer = double
    calculator = Calculator.new(printer)

    expect(printer).to receive(:print).with(5)

    calculator.add(2, 3)
  end
end