defmodule PhoenixTimex.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_timex,
     version: "1.0.1",
     elixir: "~> 1.1",
     package: package,
     description: "Phoenix and Timex integration",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :timex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:phoenix_html, "~> 2.5"},
     {:timex, "~> 3.0"},
    ]
  end

  defp package do
    [maintainers: ["Kilian Cirera Sant"],
     links: %{"GitHub" => "https://github.com/Paradem/phoenix_timex"},
     licenses: ["MIT"]
    ]
  end
end
