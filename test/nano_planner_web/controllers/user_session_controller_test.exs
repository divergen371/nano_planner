defmodule NanoPlannerWeb.UserSessionControllerTest do
  @moduledoc """
  User session controller test module
  """
  use NanoPlannerWeb.ConnCase
  import NanoPlanner.AccountsFixtures

  describe "GET /users/log_in" do
    setup do
      user = user_fixture(login_name: "alice")
      {:ok, user: user}
    end

    test "ログインフォームを表示する", %{conn: conn} do
      conn = get(conn, "/users/log_in")

      assert Phoenix.Controller.view_template(conn) == "new.html"
    end

    test "トップページにリダイレクトする", %{conn: conn, user: user} do
      conn =
        conn
        |> log_in_user(user)
        |> get("/users/log_in")

      assert redirected_to(conn) == "/"
    end
  end

  describe "POST /users/log_in" do
    setup do
      user = user_fixture(login_name: "alice")
      {:ok, user: user}
    end

    test "ログインに成功する", %{conn: conn, user: user} do
      params = %{
        "user" => %{
          "login_name" => user.login_name,
          "password" => user.login_name <> "123!"
        }
      }

      conn = post(conn, "/users/log_in", params)
      assert redirected_to(conn) == "/"
    end
    test "ログインに失敗する", %{conn: conn, user: user} do
      params = %{
        "user" => %{
          "login_name" => user.login_name,
          "password" => "oops!1"
        }
      }

      conn = post(conn, "/users/log_in", params)
      assert Phoenix.Controller.view_template(conn) == "new.html"
      assert conn.assigns[:error_message] != nil
    end
  end
end
