defmodule DeClone.Cache do
  require IEx
  use GenServer
  alias DeClone.PageRepo

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: :de_cache)
  end

  def get(slug) do
    case GenServer.call(:de_cache, {:get, slug}) do
      {_slug, result} -> result
      _ -> nil
    end
  end

  def get_random_id() do
    GenServer.call(:de_cache, {:get_random_id})
  end

  # defp set(slug, value) do
  #   GenServer.call(:de_cache, {:set, slug, value})
  # end

  # GenServer callbacks

  def handle_call({:get, slug}, _from, state) do
    {:reply, {slug, Map.get(state, slug)} , state}
  end

  def handle_call({:get_random_id}, _from, state) do
    {:reply, elem(Enum.random(state), 0) , state}
  end

  # def handle_call({:set, slug, value}, _from, state) do
  #   true = :ets.insert(ets_table_name, {slug, value})
  #   {:reply, value, state}
  # end

  def init(:ok) do
    # state = %{}
    # Enum.each PageRepo.all(), fn page ->
    #   IEx.pry
    #   state = Map.put(state, page.id, page.body)
    # end
    # IO.inspect state

    state = Enum.reduce PageRepo.all(), %{}, fn(p, acc) ->
      Map.put(acc, p.id, p.body)
    end
    {:ok, state}
  end
end
