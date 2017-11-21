defmodule CasperRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  forward "/csp", to: CasperContentRouter

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
