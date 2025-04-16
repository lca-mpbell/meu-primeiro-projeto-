#!/bin/bash

echo "Bem-vindo à Calculadora em Shell Script!"
echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read operacao

case $operacao in
  1)
    resultado=$(echo "$num1 + $num2" | bc)
    echo "Resultado: $resultado"
    ;;
  2)
    resultado=$(echo "$num1 - $num2" | bc)
    echo "Resultado: $resultado"
    ;;
  3)
    resultado=$(echo "$num1 * $num2" | bc)
    echo "Resultado: $resultado"
    ;;
  4)
    if [ "$num2" == "0" ]; then
      echo "Erro: divisão por zero!"
    else
      resultado=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Resultado: $resultado"
    fi
    ;;
  *)
    echo "Opção inválida!"
    ;;
esac

