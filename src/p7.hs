import Data.List
import Data.Maybe

-- The 10001'th prime --
main = print(primes !! 10000)

-- This is magic --
primes = let { sieve xs (p:ps) = let (h,t) = span (< p*p) xs in h ++ sieve (filter ((> 0).(`rem`p)) t) ps } in 2 : 3 : sieve [5,7..] (tail primes)
