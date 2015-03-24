defmodule ExampleCrm.ContactQueries do
  import Ecto.Query

  def all_contacts do
    query = from contact in ExampleCrm.Contact,
              select: contact
    ExampleCrm.Repo.all(query)
  end
end
