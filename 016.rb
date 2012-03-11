#!/usr/bin/env ruby

#Ruby made this problem really really easy

res = 0
(2 ** 1000).to_s.each_char do |ch|
  res += ch.to_i
end

puts res
