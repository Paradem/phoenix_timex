# Phoenix Timex

Phoenix Timex integrates Phoenix with [Timex](https://github.com/bitwalker/timex). It simply implements the `Phoenix.HTML.Safe` protocol for `%Timex.DateTime` and `%Timex.Date`, allowing you to use them in your templates without having to pick a format.

## Installation

  1. Add phoenix_timex to your list of dependencies in `mix.exs`:

        def deps do
          [{:phoenix_timex, "~> 1.0.0"}]
        end

  2. Run `mix deps.get`

## Support for other Timex versions
Phoenix Timex 1.x supports Timex 2.x.

Use Phoenix Timex 0.0.3 if you want support for Timex < 2.
