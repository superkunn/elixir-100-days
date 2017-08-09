defmodule Mylist do
  def span(from, to),  do: spann([from], from, to)

  def spann(list,to,to) do
    list
  end

  def spann(list,tail,to) do
    spann(list ++ [tail+1], tail+1, to)
  end



end
