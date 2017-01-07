defmodule DeClone.PageRepoTest do
  use DeClone.ModelCase, async: false
  alias DeClone.PageRepo
  alias DeClone.Page

  test "all returns four structs" do
    assert length(PageRepo.all()) == 4
  end

  test "get_random_id/1 returns one of four ids" do
    assert PageRepo.get_random_id() in ["10", "11", "12", "13"]
  end

  test "get/1 returns requested page entity" do
    assert PageRepo.get("10") == %Page{body: "one", id: "10"}
  end
end
