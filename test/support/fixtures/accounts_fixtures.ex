defmodule NanoPlanner.AccountsFixtures do
  @moduledoc """
  Test fixture for NanoPlanner.Accounts
  """
  import NanoPlanner.Repo, only: [insert!: 1]
  alias NanoPlanner.Accounts.User

  @doc """
  テスト用のユーザー名の自動生成
  """
  def unique_login_name, do: "user#{System.unique_integer()}"

  @doc """
  ユーザー名とパスワードを束縛したUser構造体を返す
  """
  def user_fixture(attrs \\ []) do
    login_name = Keyword.get(attrs, :login_name, unique_login_name())
    hashed_password = Bcrypt.hash_pwd_salt(login_name <> "123!")

    insert!(%User{
      login_name: login_name,
      hashed_password: hashed_password
    })
  end
end
