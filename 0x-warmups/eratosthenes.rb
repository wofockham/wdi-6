class Sieve
  # TODO: memoization to prevent doing the same work repeatedly by saving previous results.
  def self.primes(bound)
    numbers = (2..bound).to_a
    primes = []

    while candidate = numbers.shift
      primes << candidate
      numbers.reject! { |n| n % candidate == 0 }
    end

    primes
  end
end
