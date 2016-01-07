defmodule MyEnum do 
  def all?([], _), do: true 

  def all?([head|tail], func) do 
    func.(head) && all?(tail, func)
  end

  def each([], _), do: :ok
  def each([head|tail], func) do 
    func.(head)
    each(tail,func)
  end

  def filter([], _), do: [] 
  def filter([head | tail], func) do 
    if (func.(head)) do 
      [ head | filter(tail,func) ]
    else 
      filter(tail,func)
    end
  end


  # split

  def _split(new_list,[],_), do: {new_list,[]}

  def _split(new_list,orig_list, count) when count == 0, do: {new_list,orig_list}
  
  def _split(new_list,[head|tail], count) when count > 0 do 
     _split([head | new_list ],tail,count-1)
  end

  def _length([]), do: 0

  def _length([head|tail]) do
    1+_length(tail)
  end

  def split(list,count) when count < 0 do
    len = _length(list)
    count = len + count
    if (count < 0), do: count=0
    split(list,count)
  end

  def split(list,count) do 
     _split([],list,count)
  end

  # take

  def _skip([],_), do: []
  def _skip(list,count) when count == 0, do: list
  def _skip([head | tail],skip), do: _skip(tail,skip-1) 

  def take([],_), do: [] 
  def take(list,count) when count == 0, do: []
  def take(list,count) when count < 0 do
    len = _length(list)
    skip = len + count
    if (skip < 0), do: skip=0
    _skip(list,skip)
  end

  def take([head|tail],count) do 
      [head | take(tail,count-1)]     
  end

end
