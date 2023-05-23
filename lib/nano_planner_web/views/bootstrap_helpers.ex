defmodule NanoPlannerWeb.BootstrapHelpers do
  import Phoenix.HTML.Form

  @moduledoc """
  Bootstrap style helper
  """
  def bootstrap_text_input(form, field, opts \\ []) do
    class = form_control_class(form, field, opts)
    opts = Keyword.put(opts, :class, class)
    text_input(form, field, opts)
  end

  defp form_control_class(form, field, opts) do
    opts
    |> Keyword.get(:class, "")
    |> add_class_token("form-control")
    |> add_class_token("is-invalid", Keyword.has_key?(form.errors, field))
  end

  defp add_class_token("" = _class, token), do: token
  defp add_class_token(class, token), do: class <> " " <> token
  defp add_class_token(class, token, true), do: class <> " " <> token
  defp add_class_token(class, _token, false), do: class
end
