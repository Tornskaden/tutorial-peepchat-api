defmodule PeepchatWeb.Router do
  use PeepchatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PeepchatWeb do
    pipe_through :api

    resources "/session", SessionController, only: [:index]
  end
end
