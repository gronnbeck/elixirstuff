defmodule HelloWorldSugar.Controllers.Main do
  use Sugar.Controller

  def index(conn, []) do
    json conn, %{message: "Hello world"}
  end
end
