defmodule MyList do
  def max(list), do: _max(list,0)

  def _max([],current_max), do: current_max
  def _max([head|tail],current_max) when head > current_max do 
   _max(tail,head) 
  end
  def _max([head|tail],current_max) do
   _max(tail,current_max) 
  end
end
