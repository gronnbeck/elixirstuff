defmodule HelloWorldSugar.Models.Task do
  use Ecto.Model

  # Take a look at https://github.com/elixir-lang/ecto#models
  # for information about defining fields for your model.
  schema "task" do
    field :desc, :string
  end
end
