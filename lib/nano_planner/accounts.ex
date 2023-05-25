defmodule NanoPlanner.Accounts do
  alias NanoPlanner.Repo
  alias NanoPlanner.Accounts.User

  def count_users do
    Repo.aggregate(User, :count, :id)
  end

  def get_user_by_login_name_and_password(_login_name, _password) do
    nil
  end
end
