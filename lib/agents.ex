{:ok, pid} = Agent.start(fn -> 42 end)
Agent.get(pid, fn state -> state end) |> IO.puts
