defmodule BSearchTest do
  use ExUnit.Case
  doctest BSearch

  test "returns the value if it is in the list" do
    assert BSearch.search(Enum.to_list(1..10_000), 4567) == 4567
  end

  test "returns nil if the value is not in the list" do
    assert BSearch.search([1,2,3,4,5,6], 8) == nil
  end
end
