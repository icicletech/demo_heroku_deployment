# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :demo_heroku_deployment,
  ecto_repos: [DemoHerokuDeployment.Repo]

# Configures the endpoint
config :demo_heroku_deployment, DemoHerokuDeploymentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h2gptt12pCfNzo7VTACsBKaKOuCqmtd7+Xb5vafLJ6K1WycH+IC0w6TEidfrfxKP",
  render_errors: [view: DemoHerokuDeploymentWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DemoHerokuDeployment.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
