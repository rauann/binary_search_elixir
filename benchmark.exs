list = Enum.to_list(1..10_000_000)

Benchee.run(%{b_search: fn -> BSearch.search(list, 45367) end})
