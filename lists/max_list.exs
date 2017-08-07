defmodule Mylist do
  
  def max([head|tail]) do
    _max([head|tail],head)
  end

  defp _max([],value) do
    value
  end

  defp _max([head|tail],value) when head >= value do
    _max(tail,head)
  end

  defp _max([head|tail],value) when head < value do
    _max(tail,value)
  end

    
end
