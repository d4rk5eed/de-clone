defmodule DeClone.PageRepo do
  #use Ecto.Repo, otp_app: :de_clone
  alias DeClone.Page

  def all() do
    filepath = Application.get_env(:de_clone, DeClone.PageRepo)[:source]
    stream = File.stream!(filepath)
    Enum.map(
      Stream.with_index(stream, 16),
        fn x -> %Page{body: String.trim(elem(x,0)),
        id: Hexate.encode(elem(x,1), 2)} end
    )
  end

  def get_random_id() do
    Enum.random Enum.map(all(), fn x -> x.id end)
  end

  def get(id) do
    Enum.find all(), fn map -> map.id == id end
  end
end
