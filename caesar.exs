defmodule MyList do

    def caesar(list, n) do
      Enum.map( list, &(if (&1 + n) > ?z, do: &1 + n - (?z - ?a + 1), else: &1 + n) )
    end

end
