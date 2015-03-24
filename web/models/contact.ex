defmodule ExampleCrm.Contact do
  use Ecto.Model

  schema "contacts" do
    field :firstname, :string
    field :lastname, :string
    has_many :activities, ExampleCrm.Activity
  end
end
