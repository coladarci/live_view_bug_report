import Config

config :live_view_bug, LiveViewBugWeb.Endpoint, secret_key_base: System.fetch_env!("SECRET_KEY")
config :live_view_bug, LiveViewBugWeb.Endpoint, http: [:inet6, port: String.to_integer(System.fetch_env!("PORT"))]
