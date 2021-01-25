defmodule MapsTry do

  def get do
    Map.get map(), :title
  end

  def has_key do
    map() |> Map.has_key?(:year)
  end

  def merge do
    map()|> Map.merge( %{some: "data"} )
  end

  def keys do
    map() |> Map.keys()
  end

  def pattern_matching do
    %{ title: _} = map()
  end

  def update do
    %{ map() | title: "Other film", year: 2018}
  end


  def map do
    %{title: "Titanic", year: 1997}
  end
end
