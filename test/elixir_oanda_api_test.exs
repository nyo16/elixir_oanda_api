defmodule ElixirOandaApiTest do
  use ExUnit.Case
  doctest ElixirOandaApi

  test "greets the world" do
    assert ElixirOandaApi.hello() == :world
  end
end
