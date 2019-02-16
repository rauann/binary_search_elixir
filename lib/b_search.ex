defmodule BSearch do
  @moduledoc """
  Documentation for BSearch.
  """

  @doc """
  Searches a given value using the binary search logic.
  https://en.wikipedia.org/wiki/Binary_search_algorithm

  ## Examples

      iex> BSearch.search([1,2,3], 2)
      2

  """
  def search(list, value) do
    cond do
      list != Enum.sort(list) -> raise "The list must be sorted"
      is_nil(middle(list)) -> nil
      value == middle(list) -> value
      value > middle(list) -> search(right_half(list, value), value)
      value < middle(list) -> search(left_half(list, value), value)
    end
  end

  defp middle(list) do
    Enum.at(list, div(length(list), 2))
  end

  defp left_half(list, value) do
    Enum.map(list, fn x -> if (x <= value) do x end; end)
    |> Enum.reject(&is_nil/1)
  end

  defp right_half(list, value) do
    Enum.map(list, fn x -> if (x >= value) do x end; end)
    |> Enum.reject(&is_nil/1)
  end
end
