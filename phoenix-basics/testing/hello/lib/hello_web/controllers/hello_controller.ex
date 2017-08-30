defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def hello(conn, _params) do
    render conn,"hello.html"
  end

  def hello_name(conn, params) do
    render conn, "hello_name.html", name: params["name"]
  end
end
