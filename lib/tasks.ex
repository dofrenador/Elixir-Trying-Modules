defmodule TasksTry do

  def main do
    worker = Task.async(fn -> TasksTry.work end)
    IO.puts "We can still do something else"

    answer = Task.await(worker)
    IO.puts "The answer is #{answer}"
  end
  def work do
    :timer.sleep 2000
    42
  end
end
