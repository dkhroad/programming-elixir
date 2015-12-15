defmodule MyList do
  def _mapsum([],value,_), do: value
  def _mapsum([ head| tail], value, func) do 
    _mapsum(tail,func.(head)+value,func) 
  end 
  def mapsum(list,func), do: _mapsum(list,0,func)
end
