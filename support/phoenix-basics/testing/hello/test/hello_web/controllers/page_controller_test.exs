defmodule HelloWeb.PageControllerTest do
  use HelloWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET /hello", %{conn: conn} do
    conn = get conn, "/hello"
    assert html_response(conn, 200) =~ "Hello World!"
  end
end
