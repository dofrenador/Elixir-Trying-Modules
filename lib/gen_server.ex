defmodule Servers do

  use GenServer

  def main() do
    {:ok, pid} = Servers.start(4)
    Servers.sqrt(pid) |> IO.inspect()
    Servers.add(pid,10) |> IO.inspect()
    Servers.result(pid) |> IO.inspect()
  end

  def start(initial_state) do
    GenServer.start(Servers, initial_state)
  end
  def sqrt(pid) do
    GenServer.cast(pid, :sqrt)
  end
  def add(pid, number) do
    GenServer.cast(pid, {:add, number})
  end
  def result(pid) do
    GenServer.call pid, :result
  end

  #Synchronous request
  def handle_call(:result, _, current_state) do
    {:reply, current_state, current_state}
  end

  def terminate(reason, current_state) do
    IO.puts "Terminated"
    reason |> IO.inspect()
    current_state |> IO.inspect()
  end

  #Aysnchronous request
  def handle_cast(:sqrt, current_state) do
    {:noreply, :math.sqrt(current_state)}
  end

  def handle_cast({:add, number}, current_state) do
    {:noreply, current_state + number}
  end

  def init(initial_state) do
    "Started with the state #{initial_state}" |> IO.puts
    {:ok, initial_state}
  end

  def init(_) do
    {:stop, "The initial state is not a number"}
  end
end
