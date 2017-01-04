# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :de_clone,
  ecto_repos: [DeClone.Repo]

# Configures the endpoint
config :de_clone, DeClone.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "40pp3r/c/YymEtsbN8bPwO5+C0+ga+9euv34wEMYGN5rF3mrLwBbK+wwmQsqlAdB",
  render_errors: [view: DeClone.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DeClone.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
