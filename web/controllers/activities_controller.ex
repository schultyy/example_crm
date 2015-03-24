defmodule ExampleCrm.ActivitiesController do
  use ExampleCrm.Web, :controller
  import Timex

  plug :action

  def create(conn, %{"time" => time, "title" => title, "notes" => notes, "contact_id" => contact_id_str}) do
    {contact_id, ""} = Integer.parse(contact_id_str)
    activity = %ExampleCrm.Activity{time: time, title: title, notes: notes, contact_id: contact_id}
    Repo.insert(activity)
    redirect conn, to: contacts_path(conn, :show, contact_id)
  end
end
