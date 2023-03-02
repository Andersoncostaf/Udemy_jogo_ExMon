defmodule ExMon.Game.Actions.Attack do
  # importa o módulo ExMon.Game para usar suas funções
  alias ExMon.Game
  #outro modulo ExMon.Game.Status
  alias ExMon.Game.Status

  # define o poder dos movimentos de ataque
  @move_avg_power 18..25
  @move_rnd_power 18..35
  
  # executa um ataque no oponente com o movimento especificado
  def attack_opponent(opponent, move) do
    # calcula o dano do ataque
    damage = calculate_power(move)

    # aplica o dano ao oponente
    #Game.apply_damage(opponent, damage)

    # atualiza a vida do oponente no estado do jogo
    opponent 
    |> Game.fetch_player()
    |> Map.get(:life)
    |> calculate_total_life(damage)
    |> update_opponent_life(opponent, damage)

    # retorna o oponente atualizado
    opponent
  end

  # calcula o poder do movimento de ataque especificado
  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
  defp calculate_power(:move_rnd), do: Enum.random(@move_rnd_power)

  # calcula a vida total do oponente após receber o dano do ataque
  defp calculate_total_life(life, damage) when life - damage < 0, do: 0
  defp calculate_total_life(life, damage), do: life - damage

  # atualiza a vida do oponente no estado do jogo
  defp update_opponent_life(life, opponent, damage) do
     opponent
     |> Game.fetch_player()
     |> Map.put(:life, life)
     |> update_game(opponent, damage)
  end

  defp update_game(player, opponent, damage) do 
      Game.info()
      |> Map.put(opponent, player)
      |> Game.update()

      Status.print_move_message(opponent, :attack, damage)
    
  end
end


  