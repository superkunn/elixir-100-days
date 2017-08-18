# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kblog,
  ecto_repos: [Kblog.Repo]

# Configures the endpoint
config :kblog, Kblog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wY3X9u1ENYYxAIgchVN4BOM4JmnCEQrRpBkQ+MLCIEfAzpVW1njcUFtHwUeDc9xa",
  render_errors: [view: Kblog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kblog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
