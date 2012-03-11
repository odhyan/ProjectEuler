#!/usr/bin/env ruby

primes = []
max = 999999

for i in 2..max
  primes[i] = 1
end

# generate prime numbers using sieve
sq = Math.sqrt(max)
for i in 2..sq
  if primes[i] == 1
    j = i
    while j * i < max
      primes[i * j] = 0
      j += 1
    end
  end
end

#find the 10001th prime
j = 0
for i in 1..max
  if primes[i] == 1
    j += 1
    if j == 10001
      puts i
    end
  end
end

