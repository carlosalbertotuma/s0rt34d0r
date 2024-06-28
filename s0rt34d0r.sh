#!/bin/bash
banner() {
    echo ""
    echo "  #####    ###                 #####  #                ###          "
    echo " #     #  #   #  #####  ##### #     # #    #  #####   #   #  #####  "
    echo " #       #     # #    #   #         # #    #  #    # #     # #    # "
    echo "  #####  #     # #    #   #    #####  #    #  #    # #     # #    # "
    echo "       # #     # #####    #         # ####### #    # #     # #####  "
    echo " #     #  #   #  #   #    #   #     #      #  #    #  #   #  #   #  "
    echo "  #####    ###   #    #   #    #####       #  #####    ###   #    # "
    echo ""
    echo "                                                         Version 0.1"
    echo "   _   _     _   _   _   _   _   _   _   _  "
    echo "  / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ "
    echo " ( B | y ) ( B | l | 4 | d | s | c | 4 | n )"
    echo "  \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ "

}

banner

# Verifica se o nome do arquivo foi passado como argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 nome_do_arquivo"
    exit 1
fi

# Verifica se o arquivo especificado existe
if [ ! -f "$1" ]; then
    echo "Arquivo $1 não encontrado!"
    exit 1
fi

# Lê os itens do arquivo em um array
mapfile -t items < "$1"

# Verifica se a lista não está vazia
if [ ${#items[@]} -eq 0 ]; then
    echo "A lista está vazia!"
    exit 1
fi

# Conta o número de itens na lista
count=${#items[@]}

# Gera um índice aleatório entre 0 e o número de itens - 1
random_index=$(( RANDOM % count ))

# Seleciona o item correspondente ao índice aleatório
selected_item=${items[$random_index]}

# Exibe o item sorteado
echo ""
echo -e "\033[1;33m          \033[5mItem sorteado: $selected_item\033[0m\033[1;33m           \033[0m"
