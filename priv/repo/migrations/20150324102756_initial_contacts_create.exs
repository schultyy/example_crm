defmodule ExampleCrm.Repo.Migrations.InitialContactsCreate do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :firstname, :string, size: 255
      add :lastname, :string, size: 255
    end
  end
end
