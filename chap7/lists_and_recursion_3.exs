defmodule MyList do 
  def caesar([],_), do: []

  def caesar([head|tail],n) when ((head >= 97) and  ( (head + n ) > 122)) do
    # a = 97, z = 122
    [ rem(head + n,122) + 96 | caesar(tail,n) ]
  end

  def caesar([head|tail],n) when ((head >= 97) and ( (head + n)  <= 122)) do 
    [ head + n | caesar(tail,n) ]
  end
end
