Name: kaze-icon-theme
Version: 1.0
Release: 1
Summary: Tema de ícones Kaze para KDE
License: BSD-3-clause
URL: https://github.com/2O48/kaze
Source0: %{name}-%{version}.tar.gz

%description
Este pacote contém os temas de ícones Kaze Light e Kaze Dark para o KDE.

%prep
%setup -q

%install
mkdir -p %{buildroot}/usr/share/icons
cp -r Kaze-light %{buildroot}/usr/share/icons/
cp -r Kaze-dark %{buildroot}/usr/share/icons/

%files
/usr/share/icons/Kaze-light
/usr/share/icons/Kaze-Dark

%changelog
* Tue Feb 11 2025 NAME_YOUR <NAME_YOUR@DOMAIN.com> - 1.1.5
- Versão inicial do tema de ícones Kaze.
