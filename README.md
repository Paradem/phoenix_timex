# PhoenixTimex

PhoenixTimex integrates Phoenix with [Timex](https://github.com/bitwalker/timex). For now it simply implements the Phoenix.HTML.Safe protocol for %Timex.DateTime, allowing you to use Timex.DateTime objects in your templates to get a default date or date and time format.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add phoenix_timex to your list of dependencies in `mix.exs`:

        def deps do
          [{:phoenix_timex, "~> 0.0.3"}]
        end
