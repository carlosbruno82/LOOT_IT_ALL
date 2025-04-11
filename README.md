# LOOT IT ALL

## M5 Godot 4.4 Course - by GDQuest

## Intuito deste estudo:
- Refatoração: Entenda como iterar gradualmente as cenas existentes e codificar para adaptá-las às necessidades do seu jogo.
- Criando colecionáveis: Aprenda a projetar e implementar itens saqueáveis que aumentam as propriedades do navio, como saúde e gemas (que também podem ser a pontuação do jogador ou qualquer recurso no jogo).
- Composição: Você aprenderá a reutilizar os elementos que criou em diferentes lugares para manter seu trabalho adaptável a novas situações e dividi-lo em partes lógicas (isso ajuda a tornar seu código escalável e reutilizável à medida que seus projetos crescem).
- Implementando sua primeira interface de usuário: Adicione elementos de UI para exibir a saúde e a contagem de gemas para dar feedback aos jogadores sobre seu estado.
- Desenhar itens aleatoriamente: Mergulhe em números aleatórios e crie instâncias de cena com código para gerar itens colecionáveis em seu nível de jogo dinamicamente.
- Animações processuais e partículas: Vamos aprender a criar animações usando código para fazer os itens flutuarem e torná-los visualmente mais atraentes com brilhos crescentes.


<img src="https://github.com/carlosbruno82/LOOT_IT_ALL/blob/main/github/loot_it_all_03_spawning_collectibles.gif">

## O que aprendi neste momento:
- Como usar uma função para atualizar o valor da barra de integridade quando a integridade do navio muda, tornando o código mais organizado e mais fácil de manter.
- Como acessar nós que não são filhos diretos do nó do script usando o get_node() função.
- Para usar o _ready() função para testar uma função e ver se ela funciona como esperado.
- Composição de cena e script: Você criou um pacote de gem e saúde com uma estrutura semelhante que poderia reutilizar o mesmo script e compartilhar o comportamento.
- Grupos de nós: Você marcou nós usando o recurso de grupo do Godot para diferenciar entre tipos colecionáveis (pacotes de saúde e gemas). Isso permitiu que o navio diferenciasse entre os dois tipos de colecionáveis.
- Label nodes: Você pode adicionar texto a uma interface de usuário usando o Label nodes.
- Refatoração de script: Você modificou o código do navio para lidar com pacotes de saúde e gemas, que é uma forma de refatoração.
- Para carregar, instanciar e adicionar cenas à árvore de cenas em tempo de execução.
- Para gerar números e posições aleatórias.
- Para acessar o tamanho da viewport para gerar colecionáveis dentro da janela do jogo.
- Por padrão, todas as áreas detectam todas as outras áreas. Na verdade, todos os nós da física detectam todos os outros nós da física.
- Você pode alterar a camada de colisão e a máscara dos nós de física para filtrar o que eles detectam.
- O Camada a propriedade informa ao mecanismo de física de que grupos o nó faz parte.
- O Máscara a propriedade informa ao mecanismo de física quais grupos o nó pode detectar.
- Obtenha o tamanho da viewport.
- Enrole o navio para o lado oposto da viewport quando a posição x ou y do navio for maior que o tamanho da viewport.
- Enrole o navio para o lado oposto da janela de visualização quando a posição x ou y do navio for menor que 0
- Você pode criar tweens para animar propriedades ao longo do tempo no código.
- Você pode usar o tween set_loops() função para loop animações de interpolação.
- Você pode usar funções de transição para alterar o tipo de transição da interpolação.
- Você pode randomizar animações usando o randf_range() função e números aleatórios.



<div style="text-align: right">

~~Carlos Bruno~~ 🎮

</div>

- Made with Godot Engine ([license](https://godotengine.org/license/))
- Art assets: CC-BY 4.0 [GDQuest](https://www.gdquest.com/)








