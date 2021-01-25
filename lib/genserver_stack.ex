defmodule Stack do

  use GenServer


  #Client side
  def start_link(default) when is_list(default) do
    GenServer.start_link(Stack, default)
  end

  def push(pid, element) do
    GenServer.cast(pid, {:push, element})
  end

  def pop(pid) do
    GenServer.call(pid, :pop)
  end




  #Server---> Callbacks

  @impl
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, element},state) do
    {:noreply, [element | state]}
  end
end
