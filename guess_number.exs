defmodule GuessNumber do
  
  def guess(actual, a..b) do
    shot = div(a+b, 2)
    IO.puts "Is it #{ shot }"
    shoot( shot, actual, a..b )
  end

  def shoot( shot, actual, a.._b ) when shot > actual do
    guess( actual, a..shot-1 )
  end

  def shoot( shot, actual, _a..b ) when shot < actual do
    guess( actual, shot+1..b )
  end

  def shoot( shot, shot, _ ) do
    IO.puts shot
  end

end
