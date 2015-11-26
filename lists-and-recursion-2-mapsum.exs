defmodule MyList do

  def mapsum([head|tail], func), do: _mapsum( [head|tail], func, 0)

  # thanks to starting from head - it's working for negative integers
  def max([head | tail]), do: _max(tail, head)
  
  
  # private

  defp _mapsum([], _, value), do: value

  defp _mapsum( [head | tail], func, value ) do
    _mapsum( tail, func, func.( head ) + value )
  end

  defp _max([], maximum), do: maximum
  defp _max([head | tail], maximum) when maximum > head do
    _max(tail, maximum)
  end

  defp _max([head | tail], maximum) when maximum <= head do
    _max(tail, head)
  end
end
