defmodule ExampleCrm.ContactsController do
  use ExampleCrm.Web, :controller

  plug :action

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, params) do
    changeset = ExampleCrm.Contact.changeset(params, :create)
    if changeset.valid? do
      Repo.insert(changeset)
      redirect conn, to: "/"
    else
      render conn, "new.html", errors: changeset.errors
    end
  end

  def show(conn, %{"id"=>id}) do
    contact = ExampleCrm.Repo.get(ExampleCrm.Contact, id)
    activities = ExampleCrm.Repo.all Ecto.Model.assoc(contact, :activities)
    render conn, "show.html", contact: contact, activities: activities
  end
end
