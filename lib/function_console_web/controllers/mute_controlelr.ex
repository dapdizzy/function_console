defmodule FunctionConsoleWeb.MuteController do
  use FunctionConsoleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def mute(conn, _params) do
    IO.puts "Mute called!"
    RabbitMQSender |> RabbitMQSender.send_message("MuteQueue", "Mute")
    IO.puts "Mute was sent over the queue"
    render conn, "index.html"
  end
end
