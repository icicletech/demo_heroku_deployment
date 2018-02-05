use Mix.Config

config :demo_heroku_deployment, DemoHerokuDeploymentWeb.Endpoint,
  load_from_system_env: true,
  # Don't forget to replace pure-peak-67829 with the name of your application. 
  url: [scheme: "https", host: "pure-peak-67829.herokuapp.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")

config :demo_heroku_deployment, DemoHerokuDeployment.Repo
  adapter: Ecto.Adapters.Postgres,
    url: System.get_env("DATABASE_URL"),
    pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
    ssl: true


config :logger, level: :info
