defmodule NanoPlannerWeb.PlanItemView do
  use NanoPlannerWeb, :view

  def format_duration(item) do
    "#{item.starts_at} 〜 #{item.ends_at}"
  end
end
