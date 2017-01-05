use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :de_clone, DeClone.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :de_clone, DeClone.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "de_clone_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :de_clone, DeClone.PageRepo,
  source: "test/priv/pages/pages.txt"
