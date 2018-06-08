defmodule ElixirOandaApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_oanda_api,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp applications(:dev), do: applications(:all) ++ [:changed_reloader]
  defp applications(_all), do: [:logger, :httpoison]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: applications(Mix.env),
      mod: {ElixirOandaApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:httpoison, "~> 1.1.1"},
      {:changed_reloader, "~> 0.1.3", only: :dev}
    ]
  end
end
