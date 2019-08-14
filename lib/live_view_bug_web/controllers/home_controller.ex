defmodule LiveViewBugWeb.HomeController do
  use LiveViewBugWeb, :controller

  def index(conn, _params) do
    render(conn, "show.html")
  end
end
