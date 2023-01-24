import Config

config :sandbox, Sandbox.Repo,
  database: Path.expand("../sandbox_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQLite3.Sandbox

config :logger, level: :error
