#!/usr/bin/env ruby

sum_a = sum_b = 0

for i in 1..100
  sum_a += i * i
  sum_b += i
end
sum_b *= sum_b

puts sum_b - sum_a
