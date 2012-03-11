#!/usr/bin/env ruby
a = 1
b = 2
sum = 2
loop do
  c = a + b
  break if c > 4000000
  sum += c if c % 2 == 0
  a = b
  b = c
end
puts sum
