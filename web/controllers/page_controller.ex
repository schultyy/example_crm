defmodule ExampleCrm.PageController do
  use ExampleCrm.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
