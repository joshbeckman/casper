defmodule Casper.Utils do
  @moduledoc """
  Utilities for Casper.
  """

  @doc """
  Parse the server port from ENV PORT (fall back to 4001)

  ## Examples

      iex> Casper.Utils.port
      4001

  """
  @spec port() :: integer
  def port do
    case System.get_env("PORT") do
      nil ->
        4001
      port ->
        String.to_integer port
    end
  end
end
