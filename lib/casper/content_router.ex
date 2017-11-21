defmodule CasperContentRouter do
  use Plug.Router

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json]
  plug :match
  plug :dispatch

  post "/" do
    IO.puts inspect(conn.body_params)
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(conn.body_params))
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
