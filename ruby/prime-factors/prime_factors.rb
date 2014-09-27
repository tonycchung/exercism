class PrimeFactors
  require 'prime'

  def self.for(num)
    number = num
    primes = num > 9 ? Prime.first(num) : Prime.first(Math.sqrt(num))
    result = []
    i = 0
    while primes[i] <= number
      if number % primes[i] == 0
        result << primes[i]
        number /= primes[i]
      else
        i += 1
      end
    end
    result
  end

  # def self.for(num)
  #   result = Prime.prime_division(num).flatten
  #   result.each_with_index { |x, i| result[i] = nil if x == 1 }.compact
  # end

end
