class Solver
  def self.factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    n * factorial(n - 1)
  end

  def self.reverse(str)
    str.reverse
  end

  def self.fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      "fizzbuzz"
    elsif n % 3 == 0
      "fizz"
    elsif n % 5 == 0
      "buzz"
    else
      n.to_s
    end
  end
end