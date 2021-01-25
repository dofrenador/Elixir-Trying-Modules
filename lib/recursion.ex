defmodule Lists do
  def mult([]), do: 1

  def mult([head | tail]) do
    head * mult(tail)
  end

  def map([], _fun), do: []
  def map([head | tail], fun) do
    [fun.(head) | map(tail, fun)]
  end

  def max([value | [head | tail]]) when value < head do
    max [head | tail]
  end
  def max([value | [head | tail]]) when value >= head do
     max [value | tail]
  end
  def max([value]), do: value #found the max!

  def print(0), do: :ok

  def print(n) do
    print(n - 1)
    IO.puts(n)
  end

  def sum([]), do: 0

  def sum([h|t]) do
    h + sum(t)
  end


end
