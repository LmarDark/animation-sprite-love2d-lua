# Knight Journey - Sprites Demo

Este repositório é uma forma de me desafiar para aprender programação de jogos. Aqui, o foco é a manipulação de sprites usando o framework Love2D (LÖVE).

## Sobre o Projeto

O projeto demonstra como carregar, exibir e animar sprites em um jogo 2D. Os arquivos de imagem estão organizados na pasta `assets/images/kingpig/`, contendo sprites para diferentes estados do personagem (Idle, Run, etc).

- **main.lua**: Arquivo principal do Love2D, responsável por inicializar o jogo, carregar imagens e atualizar/desenhar os sprites na tela.
- **assets/images/kingpig/**: Contém as imagens do personagem King Pig, separadas por estado (Idle, Run).

## Estrutura do Projeto

```
main.lua
assets/
  images/
    kingpig/
      Idle.png
      Run.png
```

## Como Executar

1. Instale o [Love2D](https://love2d.org/).
2. Baixe ou clone este repositório.
3. Execute o projeto com o comando:
   ```bash
   love .
   ```

## Objetivo Educacional

Este exemplo é indicado para quem está começando a programar jogos e deseja entender:
- Como organizar assets de sprites
- Como carregar e exibir imagens no Love2D
- Como estruturar um projeto simples de jogo

## Licença

Este projeto é livre para fins educacionais.
