defmodule GuessNumber do
  
  def guess(actual, a..b) do
    shooted = div(a+b, 2)
    IO.puts "It is #{ shooted }"
    shoot( shooted, actual, a..b )
  end

  def shoot( shooted, actual, a.._b ) when shooted > actual do
    guess( actual, a..shooted-1 )
  end

  def shoot( shooted, actual, _a..b ) when shooted < actual do
    guess( actual, shooted+1..b )
  end

  def shoot( shooted, shooted, _ ) do
    IO.puts shooted
  end

end
