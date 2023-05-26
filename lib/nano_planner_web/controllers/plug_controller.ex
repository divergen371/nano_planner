defmodule NanoPlannerWeb.PlugController do
  use NanoPlannerWeb, :controller


  def show(conn, _params) do
    render(conn, "show.html")
  end
end
