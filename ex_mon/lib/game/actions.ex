defmodule ExMon.Game.Actions do 
  alias ExMon.Game
  alias ExMon.Game.Actions.Attack

  def attack(move) do
    case Game.turn() do 
      :player -> Attack.attack_opponent(:computer, move)
      :computer -> Attack.attack_opponent(:player, move)
    end
  end

  def fetch_move(move) do
    Game.player()
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {key, value} -> 
      if value == move, do: {:ok, key}
    end)
  end
end



### chat gpt ## me ajudou e...

#def fetch_move(move) do
#  Game.player()
#  |> Map.get(:move)
#  |> case do
#    nil -> {:error, "Player move not found"}
#    moves -> find_move(moves, move)
#  end
#end


#player = ExMon.create_player("Anderson", :chute, :soco, :cura)
#ExMon.start_game(player)
#ExMon.Game.Player
#ExMon.make_move(:soco)
#ExMon.Game.Actions.Attack.attack_opponent(:computer, :soco)

