defmodule Tail do
  def mult(list), do: do_mult(1,list)

  defp do_mult(current_val, []), do: current_val

  defp do_mult(current_val, [head | tail]) do
    current_val * head |>
    do_mult(tail)
  end

  def fact(a), do: do_fact(1,a)

  defp do_fact(result, 0), do: result
  defp do_fact(result, a) do
    result * a |>
    do_fact(a-1)
  end

  def fib(n) when n < 0, do: :error
  def fib(n), do: fib(n,1,0)
  defp fib(0, _, result), do: result
  defp fib(n,next,result), do: fib(n-1, next + result, next)
end
