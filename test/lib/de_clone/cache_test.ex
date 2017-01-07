defmodule DeClone.CacheTest do
  use ExUnit.Case
  alias DeClone.Cache

  #
  # test "init cache with text data" do
  #
  # end
  test "get fetchs data by id" do
    assert Cache.get("10") == "one"
  end

  test "get_random_id fetchs random id from cache" do
    assert Cache.get_random_id  in ["10", "11", "12", "13"]
  end

  #
  # test "fetch random id" do
  #
  #   assert false
  # end
end
