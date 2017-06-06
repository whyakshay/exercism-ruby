module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(upto)
    @upto = upto
    @primes = upto < 2 ? [] : (2..@upto).map(&:to_i)
  end

  def primes
    @primes.each do |num|
      temp = num + num
      while temp <= @upto
        @primes.delete(temp)
        temp += num
      end
    end
  end
end
