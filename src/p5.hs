import Data.List
import Data.Maybe 

main = print(product (factors_from_list [2..20]))

factors_from_list n = foldl (\l v -> l ++ ((prime_factors v) \\ l)) [] n

-- Get the prime factors --
prime_factors n = until (\v -> n == product v) (\v -> v ++ [min_prime_factor(div n (product v))]) []

-- Get the minimum prime factor for the given number --
min_prime_factor n = fromJust (find (\v -> (mod n v == 0) && (n >= v)) primes)

-- This is magic --
primes = let { sieve xs (p:ps) = let (h,t) = span (< p*p) xs in h ++ sieve (filter ((> 0).(`rem`p)) t) ps } in 2 : 3 : sieve [5,7..] (tail primes)
