defmodule Shortsy.LinksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Shortsy.Links` context.
  """

  @doc """
  Generate a link.
  """
  def link_fixture(attrs \\ %{}) do
    {:ok, link} =
      attrs
      |> Enum.into(%{

      })
      |> Shortsy.Links.create_link()

    link
  end
end
