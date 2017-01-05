defmodule DeClone.PageControllerTest do
  use DeClone.ConnCase
  alias DeClone.Page

  setup %{conn: conn} = config do
    if repo = config[:page_repo] do
      conn = assign(conn, :page_repo, repo)
      {:ok, conn: conn}
    else
      :ok
    end
  end

  @tag page_repo: DeClone.TestPageRepo
  test "GET / redirects to one of thre random pages", %{conn: conn} do
    conn = get conn, "/"
    assert redirected_to(conn) in Enum.map(["00", "01", "02"], fn x -> page_path(conn, :show, x) end)
  end

  @tag page_repo: DeClone.TestPageRepo
  test "GET /a/00 shows content for record", %{conn: conn} do
    conn = get conn, "/a/00"
    assert html_response(conn, 200) =~ "It would take too long to rewrite the code from scratch"
  end
end
