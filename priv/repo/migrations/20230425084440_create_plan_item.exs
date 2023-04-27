defmodule NanoPlanner.Repo.Migrations.CreatePlanItem do
  use Ecto.Migration

  def change do
    create table(:plan_item) do
      add :name, :string, null: false
      add :description, :text, null: false
      add :start_at, :utc_datetime, null: false
      add :ends_at, :utc_datetime, null: false

      timestamps()
    end
  end
end
