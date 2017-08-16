# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cart_test,
  ecto_repos: [CartTest.Repo]

# Configures the endpoint
config :cart_test, CartTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cLq4SNBDfNdhj3QO6WRrj6vI0lx+H7c1VE1o5xiqu9oOnlUMXh/zQ+4HqSJZRo1S",
  render_errors: [view: CartTest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CartTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
