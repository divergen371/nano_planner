defmodule NanoPlanner.Schedule.PlanItem do
  @moduledoc """
    Schema module
  """
  alias NanoPlanner.Schedule.PlanItem
  use Ecto.Schema
  import Ecto.Changeset

  schema "plan_item" do
    field :name, :string
    field :description, :string, default: ""
    field :starts_at, :utc_datetime
    field :ends_at, :utc_datetime
    timestamps(type: :utc_datetime_usec)
  end

  @doc false
  def changeset(%PlanItem{} = plan_item, attrs) do
    plan_item
    |> cast(attrs, [:name, :description, :starts_at, :ends_at])
  end
end
