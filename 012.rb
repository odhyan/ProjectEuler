#!/usr/bin/env ruby

require 'set'

n = 7
loop do
  tn = (n*(n+1))/2
  s = Set.new
  d = 2
  sq = Math.sqrt(tn)
  for d in 2..sq
    if tn % d == 0
      s.add(d)
      s.add(tn/d)
    end
  end
  if s.size > 498
    puts (n*(n+1))/2
    break
  end
  n += 1
end

