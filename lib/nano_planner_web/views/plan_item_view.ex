defmodule NanoPlannerWeb.PlanItemView do
  use NanoPlannerWeb, :view

  alias Timex.Format.DateTime.Formatters.Strftime

  def format_duration(item) do
    Enum.join([format_starts_at(item), "〜", format_ends_at(item)], " ")
  end

  defp format_starts_at(item) do
    Strftime.format!(item.starts_at, "%Y年%-m月%-d日 %H:%M")
  end

  defp format_ends_at(item) do
    Strftime.format!(item.ends_at, "%Y年%-m月%-d日 %H:%M")
  end
end
