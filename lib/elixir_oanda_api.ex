defmodule ElixirOandaApi do
  @moduledoc """
  Documentation for ElixirOandaApi.
  """

  def accounts() do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts")
  end

  def account({account_id}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url , "/v3/accounts/#{account_id}")
  end

  def account({:summary, account_id}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts/#{account_id}/summary")
  end

  def account({:instruments, account_id}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts/#{account_id}/instruments")
  end

  def positions({account_id}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts/#{account_id}/positions")
  end

  def positions({:open, account_id}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts/#{account_id}/openPositions")
  end

  def positions({:instrument, account_id, instrument}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts/#{account_id}/positions/#{instrument}")
  end

  def transactions({account_id}) do
    ElixirOandaApi.Client.do_get(ElixirOandaApi.Endpoints.get_fx_trade_url, "/v3/accounts/#{account_id}/transactions")
  end

end
