defmodule Demo do
  def run do
    try do
      Keyword.fetch!([], :a)
    rescue
      KeyError -> "key cannot be found"
      ArgumentError -> "......"
    after
      #after the raise is done, this will be executed
      IO.puts "I am excuted no matter what"
    end
  end
end
