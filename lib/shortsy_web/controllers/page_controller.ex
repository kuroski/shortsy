defmodule ShortsyWeb.PageController do
  use ShortsyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
