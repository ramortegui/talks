defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def hello(conn,%{ "name" =>  name }) do
    render conn, "hello.html", name: name 
  end
end
