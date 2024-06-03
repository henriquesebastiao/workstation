#!/usr/bin/env bash

# Autor: Henrique Sebastião
# Script de instalação de pacotes e configurações iniciais para minha workstation com Arch Linux.
# Execute como sudo.
# ex.: $ sudo ./setup.sh

# ----------------------------- PACOTES ----------------------------- #

CORE=(
	base-devel # Basic tools to build Arch Linux packages
	dosfstools # Utilitários para sistema de arquivos FAT
	inetutils  # Utilitários de rede GNU (Telnet)
	net-tools  # Ferramentas de rede
	traceroute # Ferramenta para rastrear a rota de pacotes IP
)

EXTRAS=(
	aircrack-ng # Ferramenta para testes de segurança em redes Wi-Fi
	arduino-cli
	audacity                       # Editor de áudio
	awesome-terminal-fonts         # Fontes para o terminal
	bat                            # Cat clone with syntax highlighting and git integration
	bitwarden                      # Gerenciador de senhas
	bind                           # A complete, highly portable implementation of the DNS protocol
	blanket                        # Sons da natureza
	btop                           # Monitor de recursos moderno
	dbeaver                        # Ferramenta de gerenciamento de banco de dados
	discord                        # Discord
	docker                         # Docker
	docker-compose                 # Docker Compose
	eza                            # Ferramenta para listar diretórios e arquivos em forma de árvore
	esptool                        # Espressif ESP8266 and ESP32 serial bootloader utility
	filezilla                      # Cliente FTP
	firefox                        # Navegador Web
	firefox-adblock-plus           # Extensão para bloquear anúncios
	firefox-dark-reader            # Extensão para modo escuro
	flameshot                      # Ferramenta de captura de tela
	fwupd                          # Simple daemon to allow session software to update firmware
	gimp                           # Editor de imagens bitmap
	git                            # Sistema de controle de versão
	github-cli                     # GitHub CLI
	gnome-browser-connector        # Browser integration for GNOME Shell
	gnome-shell-extension-caffeine # Desativa o modo de suspensão
	gnome-terminal                 # Terminal
	gparted                        # Gerenciador de partições
	gufw                           # Firewall
	hackrf                         # Driver for HackRF, allowing general purpose software defined radio (SDR).
	hashcat
	hcxtools                     # Portable solution for capturing wlan traffic and conversion to hashcat and John the Ripper formats
	htop                         # Monitor de recursos
	inkscape                     # Editor de gráficos vetoriais
	ipython                      # Shell interativo para Python
	jq                           # Command-line JSON processor
	jupyter-notebook             # Jupyter Notebook
	keepassxc                    # Gerenciador de senhas
	knockd                       # Port-knock server
	libreoffice-still            # Suíte de escritório
	libreoffice-still-pt-br      # Language pack for LibreOffice (pt-br)
	mesa-demos                   # Mesa demos
	mesa-utils                   # Mesa utilities
	ncdu                         # Utilitário para análise de uso de disco
	neofetch                     # Exibe informações do sistema
	network-manager-applet       # Applet para gerenciar conexões de rede
	networkmanager-l2tp          # NetworkManager L2TP VPN plugin
	nodejs                       # JavaScript runtime
	noto-fonts                   # Noto TTF fonts
	noto-fonts-extra             # Noto TTF fonts
	npm                          # Gerenciador de pacotes para JavaScript
	obs-studio                   # Gravação e streaming de vídeo
	onionshare                   # Compartilhamento de arquivos de forma segura pela rede Tor
	pacman-contrib               # Utilitários para o pacman (dependência da extensão Arch Linux Updates Indicator)
	p7zip                        # Gerenciador de arquivos compactados no formato 7z
	prettier                     # Code formatter
	pyenv                        # Python Version Management
	python-devtools              # Dev tools for Python
	python-pipx                  # Instalador de pacotes Python globalmente em ambientes virtuais isolados
	python-poetry                # Gerenciador de dependências Python
	qbittorrent                  # Cliente BitTorrent
	reflector                    # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
	ruby                         # Ruby
	rust                         # Rust programming language
	rtl-sdr                      # Driver for Realtek RTL2832U, allowing general purpose software defined radio (SDR)
	screen                       # Full-screen window manager that multiplexes a physical terminal
	spyder                       # IDE científica para Python
	shfmt                        # Format shell programs
	signal-desktop               # Signal
	speedtest-cli                # Teste de velocidade da internet
	spotify-launcher             # Spotify
	supercollider                # Plataforma de síntese de áudio em tempo real
	syncthing                    # Sincronização de arquivos em rede local
	telegram-desktop             # Telegram
	thunderbird                  # Cliente de e-mail
	tk                           # A windowing toolkit for use with tcl
	tldr                         # Manual pages with practical examples
	tmux                         # Terminal multiplexer
	tor                          # Anonymizing overlay network for TCP (The Onion Router)
	torbrowser-launcher          # Navegador Tor
	ttf-fira-code                # Fonte Fira Code
	ttf-jetbrains-mono           # Fonte JetBrains Mono
	ttf-liberation               # Fonte Liberation (recomendado para Steam)
	virtualbox-guest-iso         # The official VirtualBox Guest Additions ISO
	virtualbox-host-modules-arch # VirtualBox Host kernel modules for Arch Linux
	virtualbox                   # VirtualBox
	vlc                          # Reprodutor de mídia
	vpl-gpu-rt                   # VPL GPU Ray Tracing
	wget                         # Ferramenta para baixar arquivos da internet
	wireshark-qt                 # Analisador de protocolos de rede
	wine-mono                    # Wine Mono .NET support
	xorg-xkill                   # Kill a client by its X resource
	x11vnc                       # VNC server for real X displays
	yarn                         # Fast, reliable, and secure dependency management
	zsh                          # Shell
)

MULTILIB=(
	lib32-vulkan-intel # Open-source Vulkan driver for Intel GPUs - 32-bit
	steam              # Steam
	wine               # Compatibility layer for running Windows applications
)

AUR=(
	arduino-ide-bin                 # Arduino IDE v2
	anki-bin                        # Aplicativo de flashcards
	chromedriver                    # WebDriver for Chrome
	flyctl-bin                      # Ferramenta para gerenciar deploys Fly.io
	github-desktop                  # GitHub Desktop
	gnome-shell-extension-installer # Instalador de extensões do GNOME Shell
	google-chrome                   # Navegador para testes funcionais com Selenium
	google-earth-pro                # Google Earth
	jetbrains-toolbox               # Ferramenta para instalar e atualizar IDEs da JetBrains
	localsend-bin                   # Ferramenta para compartilhar arquivos pela rede local
	obs-gstreamer                   # Plugin para OBS Studio
	postman-bin                     # Ferramenta para testar APIs
	proton-vpn-gtk-app              # Cliente VPN
	sdrsharp                        # Software Defined Radio
	stellarium-bin                  # Planetário
	sublime-text-4                  # Sublime Text
	torcheck                        # Verifica se está conectado à rede Tor
	visual-studio-code-bin          # Visual Studio Code IDE
	winbox                          # Ferramenta para gerenciar roteadores MikroTik
	zoom
)

FLATPAK=(
	com.belmoussaoui.Decoder         # Leitor e gerador de códigos QR sofisticado, mas simples.
	com.mardojai.ForgeSparks         # Notificador com suporte ao GitHub
	com.github.ADBeveridge.Raider    # Ferramenta para exclusão segura de arquivos
	com.github.finefindus.eyedropper # Color picker
	com.rafaelmardojai.SharePreview  # Pre-visulização de imagens de compartilhamento de links
	dev.bragefuglseth.Fretboard      # Acordes de violão
	dev.geopjr.Collision             # Check hashes for your files.
	fr.romainvigier.MetadataCleaner  # Limpeza de metadados de arquivos
	io.github.fizzyizzy05.binary     # Conversor de bases numéricas
	io.github.flattool.Warehouse     # App para gerenciar pacotes Flatpak
	io.github.shiftey.Desktop        # GitHub Desktop
	io.gitlab.adhami3310.Impression  # Criar pendrives bootáveis
	io.gitlab.gregorni.Letterpress   # Criar artes ASCII
	me.ppvan.psequel                 # Cliente simples para PostgreSQL
	org.emilien.SpaceLaunch          # Quando o próximo foguete subirá aos céus?
	org.gnome.design.Contrast        # Verifique a acessibilidade de cores
	org.gnome.design.Lorem           # Gerador de texto Lorem Ipsum
	org.gnome.Firmware               # Utilitário para atualização de firmware
	org.nickvision.tubeconverter     # Download de vídeos e áudios do YouTube
	re.sonny.Junction                # Utilitário para selecionar em qual browser abrir links
	se.sjoerd.Graphs                 # Gerar gráficos matemáticos
)

PIPX=(
	blue  # Formatação de código Python
	ignr  # Cria arquivos .gitignore
	isort # Ordena imports Python
	ruff  # Linter de código Python
)

EXTENSIONS=(
	app-hider@lynith.dev                                     # Oculta aplicativos do menu
	appindicatorsupport@rgcjonas.gmail.com                   # Habilita suporte a indicadores de aplicativos na tray do sistema
	arch-update@RaphaelRochet                                # Arch Linux Updates Indicator
	caffeine@patapon.info                                    # Desativa o modo de suspensão
	just-perfection-desktop@just-perfection                  # Ajusta comportamentos do GNOME Shell
	places-menu@gnome-shell-extensions.gcampax.github.com    # Menu de locais
	system-monitor@gnome-shell-extensions.gcampax.github.com # Monitor de sistema
	systemd-manager@hardpixel.eu                             # Gerenciador de serviços do systemd (GNOME 45)
)

# -------------------------------- CORES ---------------------------------- #

VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
AMARELO='\e[1;93m'
SEM_COR='\e[0m'

# ------------------------------- FUNÇÕES --------------------------------- #

## Função para instalar registrar log
log() {
	local text="$1"
	echo "$text" >>setup-log.txt
}

## Função para instalar pacotes
install_pacman() {
	local packages=("$@") # Recebe o array de pacotes como parâmetro
	for package in "${packages[@]}"; do
		if sudo pacman -S "$package" --noconfirm --needed; then
			echo -e "${VERDE}[INSTALADO] - $package ${SEM_COR}"
			log "[INSTALADO] - $package"
		else
			echo -e "${VERMELHO}[ERRO] - Falha ao instalar o pacote $package ${SEM_COR}"
			log "[ERRO] - Falha ao instalar o pacote $package"
		fi
	done
}

## Função para instalar pacotes
install_yay() {
	local packages=("$@") # Recebe o array de pacotes como parâmetro
	for package in "${packages[@]}"; do
		if yay -S "$package" --noconfirm --needed; then
			echo -e "${VERDE}[INSTALADO] - $package ${SEM_COR}"
			log "[INSTALADO] - $package"
		else
			echo -e "${VERMELHO}[ERRO] - Falha ao instalar o pacote $package ${SEM_COR}"
			log "[ERRO] - Falha ao instalar o pacote $package"
		fi
	done
}

install_flatpak() {
	local packages=("$@") # Recebe o array de pacotes como parâmetro
	for package in "${packages[@]}"; do
		if ! flatpak list | tail -n +1 | grep -q "$package"; then # Só instala se já não estiver instalado
			if flatpak install flathub "$package" --noninteractive; then
				echo -e "${VERDE}[INSTALADO] - $package ${SEM_COR}"
				log "[INSTALADO] - $package"
			else
				echo -e "${VERDE}[ERRO] - Falha ao instalar o pacote $package ${SEM_COR}"
				log "[ERRO] - Falha ao instalar o pacote $package"
			fi
		else
			echo -e "${AMARELO}[JÁ INSTALADO] - $package ${SEM_COR}"
			log "[JÁ INSTALADO] - $package"
		fi
	done
}

install_extensions() {
	local extensions=("$@") # Recebe o array de extensões como parâmetro
	for extension in "${extensions[@]}"; do
		EXTENSION_ID=$(curl -Lfs "https://extensions.gnome.org/extension-query/?search=$extension" | jq '.extensions[0] | .pk') # Encontra o ID da extensão
		gnome-sheel-extension-installer "$EXTENSION_ID" --yes                                                                   # Instala a extensão sem perguntar
		if gnome-extensions list | grep --quiet "${extension}"; then                                                            # Verifica se a extensão foi instalada
			gnome-extensions enable "${EXTENSION_ID}"                                                                              # Habilita a extensão
		fi
	done
}

# Função para modificar uma linha em um arquivo de configuração
change_line() {
	local search_text="$1" # Texto a ser encontrado na linha
	local new_text="$2"    # Novo texto a ser substituído na linha
	local file="$3"        # Caminho do arquivo de configuração

	# Encontrar o número da linha que contém o texto a ser modificado
	line=$(grep -n "$search_text" "$file" | cut -d: -f1)

	# Verificar se a linha foi encontrada
	if [ -n "$line" ]; then
		# Modificar a linha com o novo texto
		sed -i "${line}s/.*/$new_text/" "$file"
		echo "[INFO] - Configuração '$search_text' alterada para '$new_text' no arquivo $file"
		log "[INFO] - Configuração '$search_text' alterada para '$new_text' no arquivo $file"
	else
		echo "Configuração '$search_text' não encontrada no arquivo $file"
	fi
}

# ----------------------------- INICIALIZAÇÃO ----------------------------- #

rm -f setup-log.txt # Removendo log anterior

# ----------------------------- CONFIGURAÇÕES ----------------------------- #

## Adicionando configurações dos monitores em /etc/X11/xorg.conf.d/10-monitor.conf
# Configura o monitor ultra-wide como principal e o monitor do notebook à esquerda
cat <<EOF >10-monitors.conf
Section "Monitor"
    Identifier  "HDMI-1"
    Option      "Primary" "true"
    Modeline "2560x1080_30.00"  106.75  2560 2640 2896 3232  1080 1083 1093 1102 -hsync +vsync
    Option "PreferredMode" "2560x1080_30.00"
EndSection

Section "Monitor"
    Identifier  "eDP-1"
    Option "LeftOf" "HDMI-1"
EndSection
EOF

if sudo mv 10-monitors.conf /etc/X11/xorg.conf.d/; then
	echo -e "[INFO] - Configurações dos monitores adicionadas."
	log "[INFO] - Configurações dos monitores adicionadas."
else
	echo -e "${VERMELHO}[ERRO] - Falha ao adicionar configurações dos monitores.${SEM_COR}"
	log "[ERRO] - Falha ao adicionar configurações dos monitores."
fi

## Adicionando regras para upload de firmware para dispositivos serial como ESP32
cat <<EOF >99-usb-serial.rules
SUBSYSTEMS=="usb", ATTRS{idVendor}=="303a", ATTRS{idProduct}=="1001", GROUP="dialout", MODE="0666"
EOF

if sudo mv 99-usb-serial.rules /etc/udev/rules.d/; then
	echo -e "[INFO] - Regras para dispositivos USB-Serial adicionadas."
	log "[INFO] - Regras para dispositivos USB-Serial adicionadas."
else
	echo -e "${VERMELHO}[ERRO] - Falha ao adicionar regras para dispositivos USB-Serial.${SEM_COR}"
	log "[ERRO] - Falha ao adicionar regras para dispositivos USB-Serial."
fi

## Alterando configurações em /etc/pacman.conf
change_line "#Color" "Color" "/etc/pacman.conf"
change_line "#ParallelDownloads" "ParallelDownloads = 15" "/etc/pacman.conf"

# ----------------------------- CHECANDO INTERNET ------------------------------ #

if ! ping -c 1 8.8.8.8 -q &>/dev/null; then
	echo -e "${VERMELHO}[ERROR] - Sem conexão com a Internet. Verifique a rede.${SEM_COR}"
	exit 1
else
	echo -e "${VERDE}[INFO] - Conexão com a Internet OK.${SEM_COR}"
	log "[INFO] - Conexão com a Internet OK."
fi

# ------------------------------- PREPARANDO YAY ------------------------------- #

## Instalando e configurando o Yay
pacman -S --needed git base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay || exit
makepkg -si --noconfirm

yay -Y --gendb # Atualizando o banco de dados do Yay
if yay -Syu --noconfirm; then
	echo -e "${VERDE}[INFO] - Yay atualizado.${SEM_COR}"
	log "[INFO] - Atualização completa com yay OK."
else
	echo -e "${VERMELHO}[ERRO] - Falha na atualização com Yay.${SEM_COR}"
	exit 1
fi

# ----------------------------- INSTALANDO PACOTES ----------------------------- #

## Instalando pacotes
install_pacman "${CORE[@]}"
install_pacman "${EXTRAS[@]}"
install_yay "${AUR[@]}"
install_yay "${MULTILIB[@]}"
install_flatpak "${FLATPAK[@]}"
install_flatpak "${EXTENSIONS[@]}"

## Instalando pacotes Python globalmente com pipx
if pipx --version; then
	pipx ensurepath # Adicionando o diretório ~/.local/bin ao PATH
	for package in "${PIPX[@]}"; do
		if ! pipx list | tail -n +1 | grep -q "$package"; then
			if pipx install "$package"; then
				echo -e "${VERDE}[INSTALADO] - $package ${SEM_COR}"
				log "[INSTALADO] - $package"
			else
				echo -e "${VERMELHO}[ERRO] - Falha ao instalar o pacote $package ${SEM_COR}"
				log "[ERRO] - Falha ao instalar o pacote $package"
			fi
		else
			echo -e "${AMARELO}[JÁ INSTALADO] - $package ${SEM_COR}"
			log "[JÁ INSTALADO] - $package"
		fi
	done
else
	echo -e "${VERMELHO}[ERRO] - pipx não instalado.${SEM_COR}"
	log "[ERRO] - pipx não instalado."
fi

# ----------------------------- CONFIGURAÇÕES ----------------------------- #

## Configurando o Terminal com ZSH e tema Spaceship Prompt
if pacman -Qe | grep -q zsh; then
	chsh -s /bin/zsh # Alterando o shell padrão do usuário para ZSH
	log "[INFO] - Shell padrão alterado para ZSH."

	# Instalando Oh My Zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	log "[INFO] - Oh My Zsh instalado."

	# Instalando tema Spaceship Prompt
	git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
	log "[INFO] - Tema Spaceship Prompt instalado."

	# Alterando configurações em ~/.zshrc
	change_line 'ZSH_THEME="robbyrussell"' 'ZSH_THEME="spaceship"' "$HOME/.zshrc"
	log "[INFO] - Tema Spaceship Prompt configurado."

	# Instalando plugins do ZSH
	git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
	log "[INFO] - Plugins do ZSH instalados."

	# Adicionando plugins em ~/.zshrc
	change_line "plugins=(git)" "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" "$HOME/.zshrc"
	log "[INFO] - Plugins do ZSH configurados."

	# Configurando fontes para o funcionamento correto do Spaceship Prompt
	mkdir -p ~/.fonts
	git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
	fc-cache -vf
fi

# Adicionando configurações do Spaceship Prompt em ~/.config/spaceship.zsh
cat <<EOF >~/.config/spaceship.zsh
# Display username always
SPACESHIP_USER_SHOW=always

# Docker
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_COMPOSE_SHOW=false

# Git
SPACESHIP_GIT_STATUS_SHOW=false

# Venvs
SPACESHIP_VENV_GENERIC_NAMES=(venv .venv)

# Package
SPACESHIP_PACKAGE_SHOW=false
EOF

log "[INFO] - Configurações do Spaceship Prompt adicionadas."

## Adicionando aliases
cat <<EOF >~/.aliases
# ----------------------------- PIP ----------------------------- #

alias pip-rm-all="pip freeze | xargs pip uninstall -y"
alias activate="source venv/bin/activate"

# ---------------------------- POETRY -------------------------- #

alias pshell="poetry shell"
alias pexport="poetry export --with dev --without-hashes --without-urls --output requirements.txt"
alias pexport-production="poetry export -f requirements.txt --output requirements.txt --without-hashes --without dev"

# ---------------------------- UTILS ---------------------------- #

alias cl="clear"
alias ls="exa -a"
alias lt="exa tree"
alias bar="bat --style=auto"

# ---------------------------- DOCKER --------------------------- #
# remove all images
alias dk-rmai="docker rmi $(docker images -a -q)"

# --------------------------- ESPRESSIF ------------------------- #

alias get_idf='. $HOME/esp/esp-idf/export.sh'

# ------------------------- PORTAS SERIAIS ---------------------- #

# Permitir todos os usuários acessarem as portas seriais
alias serial='sudo chmod a+rw /dev/ttyACM0'

# Listas as portas seriais existentes
alias lss='ls /dev/ttyA*'

# ---------------------------- SHARED --------------------------- #

# Shred for file
alias rmm='shred -n 10 -z -u -v'
# Shred for disk
alias rmmd='shred -n 2 -z -v'

# -------------------------- IFCONFIG.ME ------------------------ #
alias ipp='curl ifconfig.me'

# ---------------------------- PACMAN --------------------------- #
alias pclean='sudo pacman -Rs $(pacman -Qdtq)'

# -------------------------- REFLECTOR -------------------------- #
alias reflector-setup='sudo reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist'
EOF

log "[INFO] - Aliases adicionados."

cat <<EOF >>~/.zshrc

# Load user aliases
source ~/.aliases
EOF

log "[INFO] - Aliases carregados no ~/.zshrc."

## Configurando VirtualBox
if pacman -Qe | grep -q virtualbox && pacman -Qe | grep -q virtualbox-host-modules-arch; then
	sudo modprobe vboxdrv
	sudo modprobe vboxnetadp
	sudo modprobe vboxnetflt
	sudo gpasswd -a "$USER" vboxusers # Adicionando o usuário ao grupo vboxusers
	log "[INFO] - VirtualBox configurado."
fi

## Configurando Docker
if pacman -Qe | grep -q docker; then
	sudo systemctl enable docker
	sudo systemctl start docker
	sudo gpasswd -a "$USER" docker # Adicionando o usuário ao grupo docker
	log "[INFO] - Docker configurado."
fi

## Configurando Tor Proxy
if pacman -Qe | grep -q tor; then
	sudo systemctl enable tor
	sudo systemctl start tor
	log "[INFO] - Tor Proxy configurado."
fi

## Configurando Syncthing
if pacman -Qe | grep -q syncthing; then
	sudo systemctl enable syncthing@"$USER".service
	sudo systemctl start syncthing@"$USER".service
	log "[INFO] - Syncthing configurado."
fi

## Instalando e configurando asdf-vm
if yay -Q | grep -q curl && yay -Q | grep -q git; then
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
	source "$HOME/.asdf/asdf.sh"
	echo "# Load asdf-vm" >>~/.zshrc
	echo "source ~/.asdf/asdf.sh" >>~/.zshrc
	asdf plugin add python
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	#	asdf global python system
	asdf install python 3.11.9
	asdf install python 3.12.3
	asdf global python 3.12.3
	log "[INFO] - asdf-vm configurado."
fi

## Configurando GIT
git config --global user.name "Henrique Sebastião"
git config --global user.email "contato@henriquesebastiao.com"
git config --global core.editor "nano"
git config --global init.defaultBranch main

## Configurando Reflector
if pacman -Qe | grep -q reflector; then
	sudo reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
	log "[INFO] - Reflector configurado."
fi

## Configurando DNS
printf "nameserver 1.1.1.1\nnameserver 1.0.0.1\n" | sudo tee /etc/resolv.conf >/dev/null
sudo chattr +i /etc/resolv.conf # Protegendo o arquivo contra alterações

## Configurando Sublime Text
wget https://raw.githubusercontent.com/daltonmenezes/aura-theme/main/packages/sublime-text/aura-theme.tmTheme
mv aura-theme.tmTheme ~/.config/sublime-text/Packages/aura-theme/
cat <<EOF >~/.config/sublime-text/Packages/User/Preferences.sublime-settings
{
    "theme": "Adaptive.sublime-theme",
    "font_face": "JetBrains Mono",
    "save_on_focus_lost": true,
    "highlight_line": true,
    "caret_style": "phase",
    "color_scheme": "Packages/aura-theme/aura-theme.tmTheme",
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true
}
EOF
log "[INFO] - Sublime Text configurado."

## Criando diretórios
mkdir -p ~/git
mkdir -p ~/.temp

## Adicionando atalhos ao Nautilus
nautilus -q
echo "file:///home/$USER/git 💾 git" >>~/.config/gtk-3.0/bookmarks
echo "file:///home/$USER/.temp 🕖 .temp" >>~/.config/gtk-3.0/bookmarks

# ----------------------------- FINALIZAÇÃO ----------------------------- #

echo -e "${VERMELHO}[INFO] - Log do script em setup-log.txt${SEM_COR}"
echo -e "${VERMELHO}[INFO] - Lembre-se de adicionar as variáveis de ambiente do Poetry em ~/.profile .${SEM_COR}"
echo -e "${VERMELHO}[INFO] - Lembre-se de adicionar as variáveis de ambiente do Poetry em ~/.pypirc .${SEM_COR}"
echo -e "${VERMELHO}[INFO] - Lembre-se de configurar o ProtonVPN e adiciona-lo aos aplicativos de inicialização com o sistema.${SEM_COR}"
echo -e "${VERDE}[INFO] - Script finalizado! :)${SEM_COR}"
echo -e "${VERDE}[INFO] - Reinicie o computador para aplicar todas as configurações.${SEM_COR}"
