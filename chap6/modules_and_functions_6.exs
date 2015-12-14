defmodule Chop do 
  def _guess(actual,guessed,_) when actual == guessed, do: IO.puts actual 

  def _guess(actual,guessed,min..max) when actual < guessed do 
    IO.puts "Is it #{guessed}"
    max = guessed - 1
    guessed = div((min + max), 2)
    _guess(actual,guessed,min..max)
  end 

  def _guess(actual,guessed,min..max) when actual > guessed do 
    IO.puts "Is it #{guessed}"
    min = guessed + 1
    guessed = div((min+ max), 2)
    _guess(actual,guessed,min..max)
  end 

  def guess(actual,min..max) do
     guessed = div((min + max), 2)
    _guess(actual,guessed,min..max)
  end
end

Chop.guess(273,1..1000)
