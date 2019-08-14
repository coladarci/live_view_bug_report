defmodule LiveViewBugWeb.FallbackController do
  use Phoenix.Controller

  alias LiveViewBugWeb.ErrorView

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(ErrorView)
    |> render(:not_found, %{
      view_class: "error__not_found",
      css: "/css/errors.css"
    })
  end
end
