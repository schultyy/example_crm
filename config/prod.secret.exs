use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :example_crm, ExampleCrm.Endpoint,
  secret_key_base: "KM/SMg+gsN1MechtNDYFQWzzJriyHIFo8GJb79NPzFzXGLWFmWHoY+jQ9woxq8GF"

# Configure your database
config :example_crm, ExampleCrm.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "example_crm_prod"
