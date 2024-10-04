defmodule ElApp do
  @moduledoc """
  Documentation for ElApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElApp.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Calls the hw function from lib_pkg.

  ## Examples

      iex> ElApp.call_lib_pkg()
      "hello from lib_pkg"

  """
  def call_lib_pkg do
    LibPkg.hello()
    LibPkg.hw()
  end
end
