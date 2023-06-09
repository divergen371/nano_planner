# エイリアスの定義
alias NanoPlanner.Schedule.PlanItem

# エイリアスのを用いてスキーマ構造体を作成
item = %PlanItem{}

# ブラウザから送信されたフォームデータの体でマップを作成
params = %{
  "name" => "Test",
  "description" => "Experiment",
  "starts_at" => "2020-04-01T12:00:00",
  "ends_at" => "2020-04-01T13:00:00"
}

fields = [:name, :description, :starts_at, :ends_at]
cs = Ecto.Changeset.cast(item, params, fields)

IO.inspect(Map.keys(cs))
IO.inspect(cs.data == item)
IO.inspect(cs.params == params)
IO.inspect(cs.changes)
