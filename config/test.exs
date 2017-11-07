use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :function_console, FunctionConsoleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :function_console, FunctionConsole.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "function_console_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
