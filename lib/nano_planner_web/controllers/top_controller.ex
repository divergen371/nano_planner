defmodule NanoPlannerWeb.TopController do
  use NanoPlannerWeb, :controller

  def index(conn, _params) do
    if false do
      render(conn, "index.html")
    else
      render(conn, "welcome.html")
    end
  end
end
