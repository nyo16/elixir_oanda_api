defmodule ElixirOandaApi.Client do

  @token  Application.get_env(:elixir_oanda_api, :token)
  @options [ssl: [{:versions, [:'tlsv1.2']}], recv_timeout: 1000]
  @headers ["Authorization": "Bearer #{@token}", "Accept": "Application/json; Charset=utf-8", "Content-Type": "application/json"]

  def do_get(url, path) do
    {status, response} = HTTPoison.get(url <> path, @headers, @options)
      case {status, response} do
      {:ok, response} ->
          case response.status_code do
            200 ->
              {:ok , Poison.decode! response.body}
            _ ->
              {:error, Poison.decode! response.body}
          end
      _ ->
        {status, response}
    end

  end

  def do_post(url, path) do
    :TBD
  end


end
