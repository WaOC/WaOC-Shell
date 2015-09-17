# WaOC Shell(DEPRECATED)
Workflow automation Opencode

--------

## Baixando e executando

O download do WaOC pode ser feito executando o comando abaixo:
``` shell
wget https://raw.githubusercontent.com/WaOC/WaOC-Shell/master/waoc.sh
```

## Funções disponíveis

A seguir, a lista das funções disponíveis

#### Instalação do OpenCode
``` shell
sh waoc.sh install
```

#### Edição de uma loja
``` shell
#sh waoc.sh edit 123456 a25e8f6a5c5b6e5f6a5c6cc5 a557a6cb54a654e6f5c5b6a6d6e6 1
sh waoc.sh edit {{STORE_ID}} {{API_KEY}} {{API_PASSWORD}} {{THEME_ID}}
```

#### Modo Work
O modo work, aciona automáticamente o `opencode watch` e também o `gulp`.
``` shell
#sh waoc.sh work 123456
sh waoc.sh work {{STORE_ID}}
```
Para finalizar o modo work, ou seja, desligar o `opencode watch` e o `gulp`, deve ser executado a função **stop**

#### Função Stop
Finaliza o `opencode watch` e também o `gulp`
``` shell
sh waoc.sh stop
```

## Dependências

- Ruby
- Gem
- Node.JS
- NPM


## Dica de ferramenta

O WaOC, funciona muito bem na IDE Cloud9(https://c9.io/).
O Cloud9 é uma IDE online onde é possível editar seu código-fonte e também acessar um terminal para a execução de comandos e instalação de programas.

No Cloud9, todas as dependências já estão instaladas como o Ruby, Gem, Node.js e o NPM.
