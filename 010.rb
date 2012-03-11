#!/usr/bin/env ruby
require 'mathn'

primes = []
MAX = 2000000

for i in 2..MAX
  primes[i] = 1
end

#generate prime numbers using sieve
#we can also use the built-in Prime class in Ruby
sq = Math.sqrt(MAX)
for i in 2..sq
  if primes[i] == 1
    j = i
    puts j*i if j*i < 0
    while j * i < MAX
      primes[i * j] = 0
      j += 1
    end
  end
end

#add all primes
sum = 0
for i in 2..MAX-1
  if primes[i] == 1
    sum += i
  end
end
puts sum

