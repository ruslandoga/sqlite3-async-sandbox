import Config

config :sandbox, Sandbox.Repo,
  database: Path.expand("../sandbox_dev.db", Path.dirname(__ENV__.file)),
  pool_size: 5
