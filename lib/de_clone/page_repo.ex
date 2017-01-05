defmodule DeClone.PageRepo do
  #use Ecto.Repo, otp_app: :de_clone

  def all(_module) do []
  end

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
