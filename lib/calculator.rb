require_relative './printer'

class Calculator
  def initialize(printer = Printer.new)
    @printer = printer
  end

  def add(number_1, number_2)
    result = number_1 + number_2

    @printer.print(result)
    return result
  end
end