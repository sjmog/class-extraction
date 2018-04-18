require_relative './printer'

class Calculator
  def add(number_1, number_2)
    result = number_1 + number_2

    printer = Printer.new
    printer.print(result)
    return result
  end
end