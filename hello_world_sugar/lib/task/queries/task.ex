defmodule HelloWorldSugar.Queries.Task do
  import Ecto.Query

  # Take a look at https://github.com/elixir-lang/ecto#query
  # for information about defining queries for your models.
  def all do
    query = from a in HelloWorldSugar.Models.Task,
            select: a
    HelloWorldSugar.Repos.Main.all(query)
  end
end
