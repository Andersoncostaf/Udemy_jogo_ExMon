defmodule ExMon.Player do
  required_keys = [:life, :moves, :name] #defini uma lista de chaves obrig.
  @max_life 100 #constante 

  @enforce_keys required_keys
  defstruct required_keys

  def build(name, move_rnd, move_avg, move_heal) do #build new players
    %ExMon.Player{
      life: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd
      },
      name: name
    }
  end
end

  
  #O módulo "ExMon.Player" define uma estrutura de dados para representar um jogador no jogo e fornece uma função para criar novos jogadores.

#O primeiro passo é definir os campos que um jogador deve ter, definidos como uma lista de chaves obrigatórias "required_keys". Neste caso, os campos obrigatórios são: "life", "move_avg", "move_heal", "move_rnd" e "name".

#Em seguida, é definida a constante "@max_life" com o valor 100, que representa a vida máxima que um jogador pode ter. Essa constante será usada para definir o valor inicial do campo "life" para um novo jogador.

#A diretiva "@enforce_keys" é usada para garantir que todas as instâncias de um jogador tenham as chaves obrigatórias definidas. Isso significa que se um jogador for criado sem uma das chaves obrigatórias, um erro será gerado em tempo de compilação.

#Em seguida, a função "defstruct" é usada para criar a estrutura de dados do jogador, definindo as chaves obrigatórias como campos da estrutura.

#A função "build" é definida para criar novos jogadores. Ela recebe quatro argumentos: "name", "move_rnd", "move_avg" e "move_heal". Dentro da função, é criada uma nova instância do jogador usando a estrutura definida anteriormente. Os valores dos argumentos são usados para inicializar os campos correspondentes da nova instância do jogador, além de definir o valor do campo "life" como "@max_life". A nova instância do jogador é retornada pela função "build".

#Em resumo, o módulo "ExMon.Player" define a estrutura de dados de um jogador e fornece uma função conveniente para criar novos jogadores com valores iniciais definidos pelos argumentos. Isso simplifica a criação e manipulação de jogadores no jogo.
