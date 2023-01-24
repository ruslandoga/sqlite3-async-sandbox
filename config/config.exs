import Config

config :sandbox, ecto_repos: [Sandbox.Repo]

import_config "#{config_env()}.exs"
