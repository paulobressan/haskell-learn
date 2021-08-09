-- Problema de fibonacci
-- A soma dos dois ultimos anteriores, exemplo
-- 1 1 2 3 5 8

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)