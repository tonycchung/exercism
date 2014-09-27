class PrimeFactors
  require 'prime'

  def self.for(num)
    primes = Prime.first(Math.sqrt(num))
    result = []
    primes.each do |factor|
      if number % factor == 0
        result << factor
        number /= factor
      else
        until factor.prime?
          factor +=1
        end
      end
    end
    result
  end

  # def self.for(num)
  #   result = Prime.prime_division(num).flatten
  #   result.each_with_index { |x, i| result[i] = nil if x == 1 }.compact
  # end

end
