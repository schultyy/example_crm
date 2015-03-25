defmodule ExampleCrm.Contact do
  use Ecto.Model

  schema "contacts" do
    field :firstname, :string
    field :lastname, :string
    has_many :activities, ExampleCrm.Activity
  end

  def changeset(params, :create) do
    %ExampleCrm.Contact{}
    |> cast(params, ~w(firstname), ~w(lastname))
    |> validate_length(:firstname, min: 1)
    |> validate_length(:lastname, min: 1)
  end
end
