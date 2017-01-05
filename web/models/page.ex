defmodule DeClone.Page do
  use DeClone.Web, :model

  schema "pages" do
    field :body, :string
  end
end
