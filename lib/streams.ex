#Suppose we are usıng piped enum built functions, we could use streams to optimize this kind of operations
#[1,2,3,4,5,6,7] |> Enum.map(&(&1 * 2)) |> Enum.drop_every(2) |> Enum.reduce(0, &(&1 +&2))

defmodule Streams do
  def transform do
    [1,2,3,4,5,6,7] |> Stream.map(&(&1 * 2)) |> Stream.drop_every(3) |>
    Enum.reduce(0, &(&1 + &2))
  end

#we can define our own streams

  def my_stream(multiplier) do
    _stream = Stream.iterate(1,&(&1 * multiplier))
    |> Enum.take(15) #take the 15 element only!
    |> IO.inspect()
  end
end
