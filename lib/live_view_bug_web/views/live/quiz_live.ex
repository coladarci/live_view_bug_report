defmodule LiveViewBugWeb.QuizLive do
  use Phoenix.LiveView

  def render(assigns), do: Phoenix.View.render(LiveViewBugWeb.Live.QuizView, "quiz.html", assigns)

  def mount(%{}, socket), do: {:ok, assign(socket, message: "Hi, on mount.")}
end
