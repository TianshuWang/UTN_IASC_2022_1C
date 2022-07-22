defmodule Comprador.Mixfile do
  use Mix.Project

  def project do
    [
      app: :comprador,
      version: "0.1.0",
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :ssl],
      mod: {Comprador, []}
    ]
  end

  defp deps do
    [
      {:websocket_client, "~> 1.3"},
      {:jason, "~> 1.0", optional: true},
      {:phoenix, github: "phoenixframework/phoenix", tag: "v1.5.1", only: :test},
      {:plug_cowboy, "~> 1.0"},
      {:ex_doc, "~> 0.18", only: :dev},
      {:libcluster, "~> 3.3"},
      {:horde, "~> 0.8.7"},
      {:poison, "~> 5.0"}
    ]
  end

end
