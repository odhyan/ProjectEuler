#!/usr/bin/env ruby
sum = 0
1000.times do |n|
  sum += n if n % 3 == 0 or n % 5 == 0
end
puts sum

