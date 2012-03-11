#!/usr/bin/env ruby

def gcd(a, b)
  return a if b == 0
  return gcd(b, a % b)
end

def lcm(a, b)
  return (a * b)/gcd(a, b)
end

res = lcm(1, 2)
for i in 3..20
  res = lcm(i, res)
end
puts res

