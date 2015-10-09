fizzbuzz_1 = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,a) -> a
end

IO.puts fizzbuzz_1.(0,0,0)
IO.puts fizzbuzz_1.(0,213,132)
IO.puts fizzbuzz_1.("abc", 0, 213)
IO.puts fizzbuzz_1.("a","b","ostatni")

fizzbuzz_2 = fn (n) -> fizzbuzz_1.( rem(n, 3), rem(n, 5), n) end

IO.puts fizzbuzz_2.(10)
IO.puts fizzbuzz_2.(11)
IO.puts fizzbuzz_2.(12)
IO.puts fizzbuzz_2.(13)
IO.puts fizzbuzz_2.(14)
IO.puts fizzbuzz_2.(15)
IO.puts fizzbuzz_2.(16)
