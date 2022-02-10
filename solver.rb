# frozen_string_literal: true

# Solver class: made up of three methods: factorial(int), reverse(str) and fizzbuzz(int)
class Solver
  def factorial(num)
    raise ArgumentError if num.negative?
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
