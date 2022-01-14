defmodule Shortsy.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, []}
  schema "links" do
    field :url, :string
    field :visits, :integer
    field :belongs_to, :id
    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:id, :url, :visits, :belongs_to])
    |> validate_required([:id, :url])
    |> validate_url(:url)
  end

  defp validate_url(changeset, field, options \\ %{}) do
    validate_change(changeset, field, fn :url, url ->
      uri = URI.parse(url)

      if uri.scheme == nil do
        [{field, options[:message] || "Please enter valid url!"}]
      else
        []
      end
    end)
  end
end
