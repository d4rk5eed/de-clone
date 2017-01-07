defmodule DeClone.PageRepoAssignment do
  # import Phoenix.Controller
  import Plug.Conn

  alias DeClone.PageRepo

  def init(opts) do
    Keyword.fetch!(opts, :repo)
  end

  def call(conn, repo) do
    cond do
      page_repo = conn.assigns[:page_repo] ->
        conn
      true ->
        assign(conn, :page_repo, repo)
    end
  end
end
