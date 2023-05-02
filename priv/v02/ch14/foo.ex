defmodule Foo do
  def hello(users) when is_list(users) do
    for user <- users do
      Foo.hello(user)
    end
  end

  def hello(user) when is_map(user) do
    IO.puts("Hello, #{user.name}")
  end

  def hello(_) do
    IO.puts("Who are you?")
  end
end
