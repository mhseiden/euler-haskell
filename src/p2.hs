main = print(sum [x | x <- (takeWhile (<4000000) (map fib [2..])), even x])
fib n = (xs!!(n-1)) + (xs!!(n-2)) where xs = 0:1:map fib [2..]
