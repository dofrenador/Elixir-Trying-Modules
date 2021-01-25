defmodule EnumTry do


  def min do
    list()|> Enum.min
  end
  def max do
    list() |> Enum.max
  end

  def reduce do
    list() |> Enum.reduce(0,&(&1 + &2)) #sums the element in the list
    list() |> Enum.reduce(0, fn x,y -> x + y end)
  end
  def map do
    #list() |> Enum.map(&(&1 * 2)) # double each element by 2
    list() |> Enum.map(fn x -> 2 * x end)
  end

  def filter do
    list() |> Enum.filter(fn x -> rem(x,2) == 1 end)
  end

  def each do
    list() |> Enum.each(&IO.puts/1)
    list() |> Enum.each(fn x -> IO.puts(x) end)
  end

  def all do
    list() |> Enum.all?(&Kernel.is_integer/1)
  end


  def list do
    [1,2,3,4,5,6]
  end
end
