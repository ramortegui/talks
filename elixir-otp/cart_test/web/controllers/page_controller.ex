defmodule CartTest.PageController do
  use CartTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
