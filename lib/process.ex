defmodule Avatar do

def work(number, index) do
  pid = spawn fn ->
    :timer.sleep(5000)
    IO.puts "#{index}: Result is #{:rand.normal() * number}"
  end
  pid |> IO.inspect
end

  def run(number) do
    Enum.each 1..5, &( work(number, &1) )
  end
end
