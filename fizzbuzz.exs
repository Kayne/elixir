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


