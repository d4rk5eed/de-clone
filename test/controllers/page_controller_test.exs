defmodule DeClone.PageControllerTest do
  use DeClone.ConnCase

  test "GET / redirects to /a/00", %{conn: conn} do
    conn = get conn, "/"
    assert redirected_to(conn) == page_path(conn, :show, page: %{id: 00})
  end

  test "GET /a/00 shows content for record", %{conn: conn} do
    conn = get conn, "/a/00"
    assert html_response(conn, 200) =~ "It would take too long to rewrite the code from scratch"
  end
end
