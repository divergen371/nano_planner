defmodule NanoPlanner.Accounts.SessionToken do
  @moduledoc """
  スキーマモジュール　 - セッショントークン
  """
  use Ecto.Schema

  schema "session_tokens" do
    field :user_id, :integer
    field :token, :binary

    timestamps(type: :utc_datetime_usec, updated_at: false)
  end
end
