defmodule ExampleCrm.Contact do
  use Ecto.Model

  schema "contacts" do
    field :firstname, :string
    field :lastname, :string
  end
end
