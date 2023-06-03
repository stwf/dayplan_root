defmodule DayplanEx.Repo do
  use Ecto.Repo,
    otp_app: :dayplan_ex,
    adapter: Ecto.Adapters.Postgres
end
