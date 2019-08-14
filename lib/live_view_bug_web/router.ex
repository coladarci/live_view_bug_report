defmodule LiveViewBugWeb.Router do
  use LiveViewBugWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :proxy do
    plug :accepts, ["html"]
  end

  scope "/", LiveViewBugWeb do
    pipe_through :browser

    get "/", HomeController, :index
  end
end
