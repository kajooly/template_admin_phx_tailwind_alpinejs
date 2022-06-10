import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :kajooly_template_tailwind, KajoolyTemplateTailwindWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "tBsfTRPk8f5O8vt/ddnt6sUDWmLg3OPXo5/BN8KxvhmQYzAjZ91EDPiMsK+usLUv",
  server: false

# In test we don't send emails.
config :kajooly_template_tailwind, KajoolyTemplateTailwind.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
