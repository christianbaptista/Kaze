#!/bin/sh

# Diretório base
BASE_DIR="Kaze"

# Criando a estrutura de diretórios
mkdir -p $BASE_DIR/DEBIAN
mkdir -p $BASE_DIR/usr/share/icons/Kaze-light
mkdir -p $BASE_DIR/usr/share/icons/Kaze-Dark

# Movendo os ícones para os locais corretos
cp -r $BASE_DIR/Kaze-light $BASE_DIR/usr/share/icons/Kaze-light
cp -r $BASE_DIR/Kaze-Dark $BASE_DIR/usr/share/icons/Kaze-Dark

# Removendo diretórios antigos
rm -rf $BASE_DIR/Kaze-light
rm -rf $BASE_DIR/Kaze-Dark

# Criando o arquivo DEBIAN/control
cat <<EOL > $BASE_DIR/DEBIAN/control
Package: kaze-icon-theme
Version: 1.0
Architecture: all
Maintainer: Seu Nome <seu.email@example.com>
Description: Tema de ícones Kaze para KDE
 Este pacote contém os temas de ícones Kaze Light e Kaze Dark para o KDE.
EOL

echo "Estrutura do pacote .deb configurada com sucesso!"
