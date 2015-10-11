defmodule MyList do

  def sum( list ), do: _sum(list)

  #private

  defp _sum([a]), do: a
  defp _sum( [ head1 | [head2 | tail ] ] ) do
    _sum( [ head2 + head1 | tail ] )
  end

end
