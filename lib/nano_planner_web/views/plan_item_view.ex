defmodule NanoPlannerWeb.PlanItemView do
  use NanoPlannerWeb, :view

  def format_duration(item) do
    Enum.join([format_starts_at(item), "〜", format_ends_at(item)], " ")
  end

  defp format_starts_at(item) do
    item.starts_at
  end

  defp format_ends_at(item) do
    item.ends_at
  end
end
