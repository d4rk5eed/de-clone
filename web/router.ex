defmodule DeClone.Router do
  use DeClone.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug DeClone.PageRepoAssignment, repo: DeClone.PageRepo
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DeClone do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/a/:id", PageController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", DeClone do
  #   pipe_through :api
  # end
end
