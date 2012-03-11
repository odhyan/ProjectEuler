#!/usr/bin/env ruby

def next_term(n)
  return n/2 if n%2 == 0
  return 3*n + 1
end

res = 0
maxlen = 0

for n in 1...1000000
  len = 0
  m = n
  while m != 1
    len += 1
    m = next_term(m)
  end
  if len > maxlen
    maxlen = len
    res = n
  end
end

puts res
