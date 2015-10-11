defmodule MyList do

  def mapsum([head|tail], func), do: _mapsum( [head|tail], func, 0)

  # private

  defp _mapsum([], _, value), do: value

  defp _mapsum( [head | tail], func, value ) do
    _mapsum( tail, func, func.( head ) + value )
  end
end
