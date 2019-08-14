defmodule LiveViewBugWeb.Plugs.HealthCheck do
  import Plug.Conn

  alias Plug.Conn

  def init([]), do: []

  def call(%Conn{path_info: ["lbcheck"]} = conn, _), do: send_healthy(conn)
  def call(conn, _), do: conn

  defp send_healthy(conn) do
    conn
    |> send_resp(200, "")
    |> halt
  end
end
