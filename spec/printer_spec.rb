require 'printer'

RSpec.describe Printer do
  it 'prints the result' do
    printer = Printer.new

    expect(STDOUT).to receive(:puts).with(5)

    printer.print(5)
  end
end