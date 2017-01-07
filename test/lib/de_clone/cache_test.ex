defmodule DeClone.CacheTest do
  use ExUnit.Case
  alias DeClone.Cache

  #
  # test "init cache with text data" do
  #
  # end
  test "fetch data by id" do
    assert Cache.get("10") == "one"
  end

  #
  # test "fetch random id" do
  #
  #   assert false
  # end
end
