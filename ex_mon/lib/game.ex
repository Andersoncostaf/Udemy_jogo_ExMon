defmodule ExMon.Game do
  use Agent

  def start(computer, player) do
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end

  def update(state) do 
    Agent.updata(__MODULE__, fn  -> state end)
  end
  
  def player, do: Map.get(info(), :player)
  def turn, do: Map.get(info(), :turn)
  def fetch_player(player), do: Map.get(info(), player )
end

#O módulo "ExMon.Game" utiliza a biblioteca padrão Agent porque ela é uma escolha comum para gerenciar estados compartilhados em sistemas concorrentes em Elixir. 

#Este arquivo game.ex é outro exemplo de um módulo definido em Elixir que utiliza a biblioteca padrão Agent. Este módulo contém duas funções principais: "start" e "info".

#A função "start" cria uma nova instância de um agente usando a função "Agent.start_link". O agente é criado com um estado inicial representado por um mapa que contém quatro chaves: "computer", "player", "turn" e "status". O valor da chave "computer" é definido pelo argumento "computer" passado para a função "start", e o valor da chave "player" é definido pelo argumento "player". A chave "turn" é inicialmente definida como ":player", indicando que é a vez do jogador jogar. A chave "status" é definida como ":started", indicando que o jogo foi iniciado.

#A função "start" retorna o pid do agente criado, que pode ser usado posteriormente para enviar mensagens para o agente.

#a função "info" utiliza a função "Agent.get" para obter o estado atual do agente criado pelo módulo. A função "info" retorna o estado atual do agente para o chamador.

#Resumindo, o módulo "ExMon.Game" utiliza a biblioteca Agent para criar uma instância de um agente com um estado inicial e fornece métodos para obter informações do estado atual do agente. Este módulo pode ser utilizado para implementar um jogo, onde o agente representa o estado do jogo e os jogadores podem enviar mensagens para o agente para atualizar o estado do jogo.