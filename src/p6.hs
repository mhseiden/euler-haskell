main = print(sum_square_diff [1..100])

sum_square_diff n = abs(ceiling((sum [x**2 | x <- n]) - ((sum n)**2)))
