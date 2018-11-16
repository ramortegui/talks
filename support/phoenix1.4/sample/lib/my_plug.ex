defmodule MyPlug do
  import Plug.Conn

  def init(options) do
    # Initialize options
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/palin")
    |> send_resp(200, "Hello World")
  end
end