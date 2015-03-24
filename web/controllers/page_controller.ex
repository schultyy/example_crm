defmodule ExampleCrm.PageController do
  use ExampleCrm.Web, :controller

  plug :action

  def index(conn, _params) do
    contacts = ExampleCrm.ContactQueries.all_contacts
    render conn, "index.html", contacts: contacts
  end
end
