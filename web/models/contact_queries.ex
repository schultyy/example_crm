defmodule ExampleCrm.ContactQueries do
  import Ecto.Query

  def all_contacts do
    query = from contact in ExampleCrm.Contact,
              select: contact
    ExampleCrm.Repo.all(query)
  end

  def by_id(contact_id) do
    query = from c in ExampleCrm.Contact,
              where: c.id == ^contact_id,
              select: c
    ExampleCrm.Repo.one(query)
  end
end
