defmodule CasperTest do
  use ExUnit.Case
  doctest Casper

  test "greets the world" do
    assert Casper.hello() == :world
  end
end
