import Ecto.Query
alias NanoPlanner.Schedule.PlanItem
alias NanoPlanner.Repo

items =
  PlanItem
  |> where(name: "買い物")
  |> order_by(asc: :id)
  |> Repo.all()
  |> Enum.map(& &1.description)

IO.inspect(items)
