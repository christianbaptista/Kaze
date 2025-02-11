#!/bin/bash

# Configurações
VERSION=1.1.10
NAME=kaze-icon-theme
SPEC_FILE=SPECS/$NAME.spec

# Cria diretórios necessários
mkdir SOURCES
mkdir -p BUILD RPMS SOURCES SPECS SRPMS
mkdir SOURCES/$NAME-$VERSION
cp -r Kaze-dark SOURCES/$NAME-$VERSION/
cp -r Kaze-light SOURCES/$NAME-$VERSION/
# Empacota os arquivos fonte
#tar -czvf SOURCES/$NAME-$VERSION.tar.gz Kaze-light Kaze-dark
cd SOURCES

tar -czvf $NAME-$VERSION.tar.gz $NAME-$VERSION

cd ..
# Constrói o pacote RPM
rpmbuild -ba $SPEC_FILE --define "_topdir $(pwd)"

# Move o pacote RPM para o diretório dist
mkdir -p dist
cp -r RPMS/x86_64/$NAME-$VERSION-1.x86_64.rpm dist/
