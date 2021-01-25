defmodule LinkProcess do
  def work do
    IO.puts "doing work..."
    exit :error
  end

  def run do
    Process.flag :trap_exit, true
    spawn_link fn -> work() end

    receive do
      response -> IO.inspect response
        # code
    end

    IO.puts "doing something else"
  end
end
