alias NanoPlanner.Schedule.PlanItem
alias NanoPlanner.Repo

item = PlanItem |> Ecto.Query.first(:id) |> Repo.one()

params = %{
  "name" => "UPDATE",
  "description" => "UPDATEの練習"
}

fields = [:name, :description]
cs = Ecto.Changeset.cast(item, params, fields)

Repo.update!(cs)
