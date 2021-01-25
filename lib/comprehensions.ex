defmodule Comprehensions do

  require Integer
  def demo(list) do
    for el when el < 10 <- list, do: el * 2
    #list |> Enum.map( &(&1 * 2))

    list |> Stream.filter(&Integer.is_even/1) |> Enum.map( &(&1 * 2))
  end

  def even_and_odd(list1, list2) do
    for el1 <- list1, el2<- list2, Integer.is_even(el1), Integer.is_odd(el2),
    do: {el1 * el2}
  end
  def even(list) do
    for el<- list, Integer.is_even(el), do: el * 2
  end

  _data = %{"Joe" => 50, "Bill" => 25, "Alice" => 23}

  def format_data(data) do
    for {name, age} <- data, into: Map.new(),
    do: {format_name(name),age}
  end
  defp format_name(name) do
    name |> String.downcase() |> String.to_atom()
  end
  def decipher(chiphered_str) do
    for <<char <- chiphered_str>>, do: char - 1
  end
end
