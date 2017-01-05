defmodule DeClone.PageController do
  use DeClone.Web, :controller
  alias DeClone.Page
  alias DeClone.PageRepo

  def action(conn, _) do
    apply(__MODULE__, action_name(conn),
    [conn, conn.params, conn.assigns[:page_repo]])
  end

  def index(conn, _params, page_repo) do
    page_id = page_repo.get_random_id()
    conn |> redirect(to: page_path(conn, :show, page_id))
  end

  def show(conn, %{"id" => id}, page_repo) do
    page = page_repo.get(id)
    conn |> render("show.html", page: page)
  end
end
