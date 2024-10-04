defmodule ElAppTest do
  use ExUnit.Case
  doctest ElApp

  test "greets the world" do
    assert ElApp.hello() == :world
  end

  test "calls lib_pkg" do
    assert ElApp.call_lib_pkg() == "hello from lib_pkg"
  end
end
