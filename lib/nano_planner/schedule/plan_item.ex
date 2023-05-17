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
    field :s_date, :date, virtual: true
    field :s_hour, :integer, virtual: true
    field :s_minute, :integer, virtual: true
    field :e_date, :date, virtual: true
    field :e_hour, :integer, virtual: true
    field :eminute, :integer, virtual: true
    timestamps(type: :utc_datetime_usec)
  end

  @allowed_fields [
    :name,
    :description,
    :s_date,
    :s_hour,
    :s_minute,
    :e_date,
    :s_hour,
    :s_minute
  ]

  @doc false
  def changeset(%PlanItem{} = plan_item, attrs) do
    plan_item
    |> cast(attrs, @allowed_fields)
  end
end
