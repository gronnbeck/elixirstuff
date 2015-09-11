defmodule ElixirPhoenixBlog.Repo.Migrations.First do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :author, :text
    end
  end
end
