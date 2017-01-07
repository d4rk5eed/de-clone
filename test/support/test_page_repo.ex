defmodule DeClone.TestPageRepo do
  alias DeClone.Page

  def all do
    [
      %Page{body: "It would take too long to rewrite the code from scratch", id: "00"},
      %Page{body: "It's a third party application issue", id: "01"},
      %Page{body: "That wouldn't be economically feasible", id: "02"}
    ]
  end

  def get_random_id() do
    Enum.random Enum.map(all(), fn x -> x.id end)
  end

  def get(id) do
    Enum.find all(), fn map -> map.id == id end
  end
end
