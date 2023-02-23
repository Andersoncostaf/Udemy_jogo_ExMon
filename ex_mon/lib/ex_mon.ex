defmodule ExMon do
  alias ExMon.{Game, Player}

  # @computer_name "Robotinik"
  
  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    #@computer_name
    #|> create_player(:punch, :kick, :heal)
    #|> Game.start(computer, player)
      
      computer = create_player("Robotinik", :punch, :kick, :heal)
      Game.start(computer, player)
  end
end

# ---- comentário ---- #
#Esse código em Elixir define um módulo chamado ExMon, que contém duas funções: create_player e start_game.

# A primeira função, create_player, recebe quatro argumentos: name, move_avg, move_rnd e move_heal. Essa função cria um novo jogador (um objeto Player) com base nos argumentos fornecidos e retorna esse objeto.

#A função create_player chama uma função Player.build para criar o objeto Player. É provável que a definição dessa função esteja em outro módulo do programa, já que o módulo atual usa alias ExMon.Player para criar um alias para o módulo Player. O alias permite que o código use o nome curto Player em vez do nome completo ExMon.Player sempre que quiser se referir a esse módulo.

#A segunda função, start_game, recebe um objeto Player como argumento. Essa função cria um novo jogador (um objeto Player) chamado "Robotinik" com movimentos definidos como :punch, :kick e :heal, e, em seguida, inicia um novo jogo (um objeto Game) com esses dois jogadores como participantes. Novamente, é provável que a definição da função Game.start esteja em outro módulo do programa, já que o módulo atual usa alias ExMon.Game para criar um alias para o módulo Game.

