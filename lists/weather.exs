defmodule WeatherHistory do
  
  def for_location_27([]), do: []
  def for_location_27([ [time,27,temp,rain] | tail ]) do
    [ [time,27,temp,rain] | for_location_27(tail) ]
  end

  def for_location_27([ _ | tail ]), do: for_location_27(tail)
  

  def test_data do
    [
      [123456789,26,15,0.125],
      [123456789,27,15,0.45],
      [123456789,28,21,0.222],
      [21321,27,213,2423]
    ]
  end
end
