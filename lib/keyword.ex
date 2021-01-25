defmodule KeyWordLists do

  def access do
    keyword_list() |> Keyword.get(:color)
    keyword_list() |> Keyword.get_values(:size)
  end

  def keyword_list do
    [color: :red, size: 10, size: 200]
    # [ {:color, :red}, {:size, 10}]
  end
end
