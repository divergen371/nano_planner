import Ecto.Query
alias NanoPlanner.Schedule.PlanItem
alias NanoPlanner.Repo

items =
  PlanItem
  |> order_by(asc: :id)
  |> Repo.all()
  |> Enum.map(& &1.name)

IO.inspect(items)
