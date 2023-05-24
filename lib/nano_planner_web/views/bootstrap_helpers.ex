defmodule NanoPlannerWeb.BootstrapHelpers do
  import Phoenix.HTML.Form
  import Phoenix.HTML.Tag

  @moduledoc """
  Bootstrap style helper
  """
  def bootstrap_text_input(form, field, opts \\ []) do
    text_input(form, field, html_opts(form, field, opts))
  end

  def bootstrap_textarea(form, field, opts \\ []) do
    textarea(form, field, html_opts(form, field, opts))
  end

  defp html_opts(form, field, opts) do
    class = form_control_class(form, field, opts)
    Keyword.put(opts, :class, class)
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

  def bootstrap_custom_checkbox(form, field, label_text) do
    content_tag(:div, class: "custom-control custom-checkbox") do
      [
        checkbox(form, field, class: "custom-control-input"),
        label(form, field, label_text, class: "custom-control-label")
      ]
    end
  end
end