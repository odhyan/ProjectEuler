#!/usr/bin/env ruby

done = false
for a in 1..1000
  for b in a..1000
    c = Math.sqrt(a*a + b*b)
    if a + b + c == 1000 && a*a + b*b == c*c
      puts a*b*c
      done = true
    end
    break if done
  end
  break if done
end
