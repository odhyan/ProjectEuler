#!/usr/bin/env ruby

n = 600851475143
i = 2
res = 1
while n > 1
  while (n > 1 && n % i == 0)
    res = i
    n/=i
  end
  i+=1
end
puts res

