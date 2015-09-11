# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :elixir_phoenix_blog, ElixirPhoenixBlog.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "elixir_phoenix_blog_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# Configures the endpoint
config :elixir_phoenix_blog, ElixirPhoenixBlog.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "xJeLNEsortXXMUTvrebZxpAiUQdEhVldErnO6jxZhvygLa5Bd3lK9fFRBRDsuZJ+",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: ElixirPhoenixBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
