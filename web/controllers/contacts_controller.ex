defmodule ExampleCrm.ContactsController do
  use ExampleCrm.Web, :controller

  plug :action

  def new(conn, _params) do
    contact = %ExampleCrm.Contact{}
    render conn, "new.html",contact: contact
  end

  def create(conn, %{"contact" => contact}) do
    changeset = ExampleCrm.Contact.changeset(contact, :create)
    if changeset.valid? do
      Repo.insert(changeset)
      redirect conn, to: "/"
    else
      render conn, "new.html", contact: changeset.changes, errors: changeset.errors
    end
  end

  def show(conn, %{"id"=>id}) do
    contact = ExampleCrm.Repo.get(ExampleCrm.Contact, id)
    activities = ExampleCrm.Repo.all Ecto.Model.assoc(contact, :activities)
    render conn, "show.html", contact: contact, activities: activities
  end
end
