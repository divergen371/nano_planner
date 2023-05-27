defmodule NanoPlannerWeb.UserSessionController do
  use NanoPlannerWeb, :controller



  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, _params) do
    redirect(conn, to: Routes.top_path(conn, :index))
  end
end
