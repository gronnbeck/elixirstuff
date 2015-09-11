defmodule ElixirPhoenixBlog.PageController do
  use ElixirPhoenixBlog.Web, :controller

  def index(conn, _params) do
    json conn, %{ hello: "world" }
  end
end
