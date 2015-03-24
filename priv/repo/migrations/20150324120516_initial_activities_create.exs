defmodule ExampleCrm.Repo.Migrations.InitialActivitiesCreate do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :title, :string, size: 255
      add :notes, :string, size: 255
      add :time, :date
      add :contact_id, references(:contacts)
    end
  end
end
