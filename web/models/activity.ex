defmodule ExampleCrm.Activity do
  use Ecto.Model

  schema "activities" do
    field :time, :date
    field :title, :string
    field :notes, :string
    belongs_to :contact, Contact
  end
end
