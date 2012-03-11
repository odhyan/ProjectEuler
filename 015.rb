#!/usr/bin/env ruby

n = 20
dp = []
for i in 0..n
  dp[i] = []
  for j in 0..n
    dp[i][j] = -1
  end
end

def solve(r, c, n, dp)
  return 0 if r > n || c > n #out of grid
  return 1 if r == n && c == n #route completed
  return dp[r][c] if dp[r][c] != -1 #routes already calculated from here 

  ret = solve(r + 1, c, n, dp) + solve(r, c + 1, n, dp) #either you go down or right
  dp[r][c] = ret #cache this value
  return ret
end

res = solve(0, 0, 20, dp)
puts res
