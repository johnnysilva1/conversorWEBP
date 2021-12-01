#!/bin/bash

find -name "*.webp" > arqs_aconverter.lista
contador=0

while read linha
do
    pasta=$(dirname "$linha")
    arq_sem_extensao=$(basename "$linha" .webp)
    convert $linha "$pasta/$arq_sem_extensao.jpg"
    a=$((a+1))
done < arqs_aconverter.lista

echo $a arquivos convertidos