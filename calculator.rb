# A calculator to give a decimal representation of a ternary number

# 1. Get in 201210
# 2. Shift first item in array and add to 'current' var.
# 3. Multiply 'current' var by BASE.
# 4. Shift first item in array and add to to 'current' var
# 5. Multiply 'current' var by BASE

class Calculator
  BASE = 3

  def initialize
  end

  def valid?
    return true
  end

  def to_decimal!(ternary)
    if !valid?
      puts "#{ternary} is not a valid ternary number"
    else
      calculate(ternary)
    end
  end

  def calculate(num)
    num = num.to_s.split(//).map(&:to_i)

    current = 0

    begin
      if num.size > 1
        current += num.shift
        current *= BASE
      else
        current += num.shift
      end
    end while !num.empty?

    current
  end
end

# Note is num the same object as ternary? Let's find this out very soon.

calc = Calculator.new

puts "Ternary number to convert to decimal: #{ARGV[0]}"

puts calc.to_decimal!(ARGV[0])




