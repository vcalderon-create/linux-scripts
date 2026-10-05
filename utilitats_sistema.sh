#!/bin/bash

# --- Funció benvinguda ---
benvinguda() {
    local nom=$1
    echo "Hola $nom, anem a comprovar el sistema."
}

# --- Funció comprova_usuari ---
comprova_usuari() {
    local usuari=$1
    if grep -q "^${usuari}:" /etc/passwd; then
        echo "L'usuari '$usuari' existeix al sistema."
    else
        echo "L'usuari '$usuari' NO existeix al sistema."
    fi
}

# --- Funció calculadora_espai ---
calculadora_espai() {
    echo "Comprovant l'espai lliure de la partició principal (/):"
    df -h /
}

# 1. Demanar el nom de l'alumne i cridar a la funció benvinguda
echo -n "Introdueix el nom de l'alumne: "
read nom_alumne
benvinguda "$nom_alumne"

echo "------------------------------------------------"

# 2. Demanar un nom d'usuari del sistema i cridar a la funció comprova_usuari
echo -n "Introdueix un nom d'usuari per verificar al sistema: "
read nom_substitut
comprova_usuari "$nom_substitut"

echo "------------------------------------------------"

# 3. Cridar a la funció calculadora_espai per tancar l'execució
calculadora_espai

