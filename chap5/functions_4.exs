prefix = fn (pre) -> 
  ( fn (suff) -> "#{pre} #{suff}" end) 
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")
