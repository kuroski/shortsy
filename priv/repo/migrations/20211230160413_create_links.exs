defmodule Shortsy.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links, primary_key: false) do
      add :id, :string, primary_key: true
      add :url, :string
      add :visits, :integer, default: 0
      add :belongs_to, references(:users, on_delete: :delete_all)

      timestamps()
    end
  end
end
