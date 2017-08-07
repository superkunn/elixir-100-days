defmodule Chop do
  def guess(c, a..b) when div(a+b,2)==c do
    IO.puts "Is it #{div(a+b,2)}\n"
    IO.puts "#{div(a+b,2)}\n"
  end

  def guess(c, a..b) when div(a+b,2)>c do
    IO.puts "Is it #{div(a+b,2)}\n"
    guess(c,a..(div(a+b,2))) 
  end
  def guess(c, a..b) when div(a+b,2)<c do
    IO.puts "Is it #{div(a+b,2)}\n"
    guess(c,div(a+b,2)..b) 
  end


end

