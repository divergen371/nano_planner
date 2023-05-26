defmodule NanoPlannerWeb.PlugController do
  use NanoPlannerWeb, :controller
  import NanoPlannerWeb.RandomNumber, only: [set_number: 2]

  plug :set_number, min: 101, max: 200

  def show(conn, _params) do
    render(conn, "show.html")
  end
end
