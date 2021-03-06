defmodule ElixirBlocks.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_blocks,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dependency, "~> 0.2.0", override: true},    
      #{:exmoji, "~> 0.2.0"},
      {:poison, "~> 4.0"},
      {:retrieval, "~> 0.9.1"},
      {:cubdb, "~> 0.17.0"}
    ]
  end
  
end
