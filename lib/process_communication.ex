defmodule Communicate do
  def work do
    IO.puts "doing work..."

    result = receive do
      {sender,{a,b}} -> send(sender, a * b) #2 step
      message -> message
    after 5000 -> IO.puts "Enough!"
    end
    IO.puts(result)
    end

    def run(message) do
      pid = spawn fn ->
        work()
      end

      send pid, {self(),message} #1 step

      receive do
        response -> IO.puts("Response: #{response}") #3rdstep
          # code
      end
    end
end
