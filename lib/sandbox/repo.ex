defmodule Sandbox.Repo do
  use Ecto.Repo,
    otp_app: :sandbox,
    adapter: Ecto.Adapters.SQLite3
end
