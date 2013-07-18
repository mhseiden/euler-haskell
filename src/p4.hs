import Data.List
import Data.Maybe

main = print(maximum (filter (is_palindrome) ([x*y | x <- (reverse [100..999]), y <- (reverse [100..999])])))
is_palindrome n = show n == (reverse (show n))
