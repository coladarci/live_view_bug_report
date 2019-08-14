defmodule LiveViewBugWeb.QuizLiveRenderTest do
  use LiveViewBugWeb.ConnCase
  import Phoenix.LiveViewTest

  test "that things work..?", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")
  end
end
