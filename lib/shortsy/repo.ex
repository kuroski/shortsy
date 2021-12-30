defmodule Shortsy.Repo do
  use Ecto.Repo,
    otp_app: :shortsy,
    adapter: Ecto.Adapters.Postgres
end
