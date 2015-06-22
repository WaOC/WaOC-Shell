#!/bin/bash

Version () {
    echo ""
    echo "WaOC Alpha v1"
    echo ""
}

InstallOpencode () {
    
    echo "Instalando OpenCode"
    sleep 1
    
    echo "Baixando os arquivos"
    wget https://github.com/WaOC/WaOC-CDN/raw/master/opencode_theme-0.0.3.gem
    wget https://raw.githubusercontent.com/WaOC/WaOC-CDN/master/gulpfile.js
    wget https://raw.githubusercontent.com/WaOC/WaOC-CDN/master/package.json
    
    echo "Instalando OpenCode"
    gem install opencode_theme-0.0.2.gem
    
    echo "Instalando as dependências com NPM"
    npm install
    
    echo "✔ Opencode instalado com sucesso"
}

Edit () {

    if [ "$1" = "" ] || [ "$2" = "" ] || [ "$3" = "" ] ||[ "$4" = "" ]; then
        echo "✘ Esta faltando alguns parametros, por favor, leia a documentacao"
    else
        mkdir $1
        cd $1
        opencode configure $2 $3 $4
        opencode download
        cd ..
        echo "✔ Loja pronta para ser editada"
    fi
}

Work () {
    if [ "$1" = "" ]; then
        echo "✘ Está faltando o ID da loja"
    else
        echo "Iniciando Work..."
        cd $1
        opencode watch &
        cd ..
        gulp &
        echo "✔ Modo Work ON"
    fi
}

Stop () {
    pkill ruby
    pkill opencode
    pkill gulp
}

#sh waoc.sh install opencode
if [ "$1" = "install" ]; then
    InstallOpencode

#sh waoc.sh edit 123456 a2c22a4f4ed6a5c6 a1a29a6e6f7a62c6 7
elif [ "$1" = "edit" ]; then
    Edit $2 $3 $4 $5

#sh waoc.sh work
elif [ "$1" = "work" ]; then
    Work $2

#sh waoc.sh stop
elif [ "$1" = "stop" ]; then
    Stop
    Stop
    echo "✔ Todos os processos foram parados"

#sh waoc.sh version
elif [ "$1" = "version" ]; then
    Version

#sem parametros ou com parametros incorretos
else
    echo "✘ Funcao nao encontrada, leia a documentacao"
fi
