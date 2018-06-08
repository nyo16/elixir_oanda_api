defmodule ElixirOandaApi.Endpoints do

  @fxTrade_practice           "https://api-fxpractice.oanda.com"
  @fxTrade                    "https://api-fxtrade.oanda.com"
  @fxTrade_streaming          "https://stream-fxtrade.oanda.com"
  @fxTrade_streaming_practice "https://stream-fxpractice.oanda.com"


  def fx_trade do @fxTrade end
  def fx_trade_practice do @fxTrade_practice end
  def fx_trade_streaming do @fxTrade_streaming end
  def fx_trade_streaming_practice do @fxTrade_streaming_practice end


  def get_fx_trade_url() do
    case Application.get_env(:elixir_oanda_api, :trading_env) do
      :live ->
        fx_trade()
      _ ->
        fx_trade_practice()
    end
  end


  def get_fx_streaming_url() do
    case Application.get_env(:elixir_oanda_api, :trading_env) do
      :live ->
        fx_trade_streaming()
      _ ->
        fx_trade_streaming_practice()
    end
  end
end
