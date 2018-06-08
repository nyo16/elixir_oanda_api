# ElixirOandaApi

**Elixir lib for oanda's trading api **

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_oanda_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_oanda_api, "~> 0.1.0"}
  ]
end
```


## Configuration

```elixir

  Add your token and choose trading environment (:practice || :live, default practice) in your config.exs

  config :elixir_oanda_api,
          token: "your token, aka the long string that you can get from oanda",
          trading_env: :practice


```
