defmodule DeClone.PageRepo do
  #use Ecto.Repo, otp_app: :de_clone
  alias DeClone.Page

  def all do []
  end

  def get_random_id() do
    Enum.random Enum.map(all(), fn x -> x.id end)
  end

  def get(id) do
    %Page{}
    #Enum.find all(module), fn map -> map.id == id end
  end

  # def get_by(module, params) do
  #   Enum.find all(module), fn map ->
  #     Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
  #   end
  # end
end
