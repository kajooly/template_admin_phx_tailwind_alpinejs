# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :kajooly_template_tailwind, KajoolyTemplateTailwindWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: KajoolyTemplateTailwindWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: KajoolyTemplateTailwind.PubSub,
  live_view: [signing_salt: "pBVBj6qK"]


# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.0",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets/template --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../../../deps", __DIR__)}
  ]
config :dart_sass,
  version: "1.49.11",
  default: [
    args: ~w(css/app.scss ../priv/static/assets/template/style.tailwind.css),
    cd: Path.expand("../assets", __DIR__)
  ]
config :tailwind,
  version: "3.0.24",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=../priv/static/assets/template/style.tailwind.css
      --output=../priv/static/assets/template/style.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
