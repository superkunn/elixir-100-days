defmodule Mylist do
  def mapsum([],func,value\\0) do
    value
  end

  def mapsum([head|tail],func,value) do
    mapsum(tail,func,func.(head,value))
  end
end
