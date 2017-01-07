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
  adapter: Sqlite.Ecto,
  database: "de_clone_test.sqlite3",
  pool: Ecto.Adapters.SQL.Sandbox

config :de_clone, DeClone.PageRepo,
  source: "pages/test_pages.txt"
