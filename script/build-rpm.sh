#!/bin/sh

# Configurações
VERSION=1.1.4
NAME=kaze-icon-theme
SPEC_FILE=SPECS/$NAME.spec

# Cria diretórios necessários
mkdir -p {BUILD,RPMS,SOURCES,SPECS,SRPMS}

# Empacota os arquivos fonte
tar -czvf SOURCES/$NAME-$VERSION.tar.gz Kaze-light Kaze-Dark

# Constrói o pacote RPM
rpmbuild -ba $SPEC_FILE --define "_topdir $(pwd)"

# Move o pacote RPM para o diretório dist
mkdir -p dist
mv RPMS/noarch/$NAME-$VERSION-1.noarch.rpm dist/
