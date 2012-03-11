#!/usr/bin/env ruby

def is_palindrome(n)
  n_copy = n
  m = 0
  while n > 0
    m = m * 10 + n % 10
    n /= 10
  end
  return m == n_copy
end

res = 0
for a in 100..999
  for b in 100..999
    prod = a * b
    res = [res, prod].max if is_palindrome(prod)
  end
end
puts res
