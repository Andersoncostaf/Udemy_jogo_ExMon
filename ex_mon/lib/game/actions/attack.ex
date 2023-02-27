defmodule ExMon.Game.Actions.Attack do

  @move_avg_power 18..25
  @move_rnd_power 18..35
  
  def attack_opponent(opponent, move) do
    damage = calculate_power(move)
    Game.apply_damage(opponent, damage)
    damage
  end

 # defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
 # defp calculate_power(:move_rnd), do: Enum.random(@move_rnd_power)

  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
  defp calculate_power(:move_rnd), do: Enum.random(@move_rnd_power)
  defp calculate_power(:soco), do: Enum.random(20..30)

  
end

