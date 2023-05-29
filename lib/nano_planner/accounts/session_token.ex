defmodule NanoPlanner.Accounts.SessionToken do
  @moduledoc """
  スキーマモジュール　 - セッショントークン
  """
  use Ecto.Schema
  alias NanoPlanner.Accounts.User

  schema "session_tokens" do
    belongs_to :user, User
    field :token, :binary

    timestamps(type: :utc_datetime_usec, updated_at: false)
  end
end
