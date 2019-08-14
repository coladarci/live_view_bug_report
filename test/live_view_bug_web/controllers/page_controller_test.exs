defmodule LiveViewBugWeb.PageControllerTest do
  use LiveViewBugWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")

    assert html_response(conn, 200) =~ "Title"
  end
end
