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
	linux-lts  # Linux LTS kernel and modules
	man-db     # Utilitário para visualizar manual
	man-pages  # Páginas de manual
	net-tools  # Ferramentas de rede
	traceroute # Ferramenta para rastrear a rota de pacotes IP
)

EXTRAS=(
	act                          # Executa o GitHub Actions localmente para teste -> https://github.com/nektos/act
	aircrack-ng                  # Ferramenta para testes de segurança em redes Wi-Fi -> https://www.aircrack-ng.org
	alsa-firmware                # Firmware binário para carregar programas no alsa-tools -> https://github.com/alsa-project/alsa-firmware
	alsa-oss                     # Biblioteca de compatibilidade OSS -> https://github.com/alsa-project/alsa-oss
	alsa-tools                   # Ferramentas avançadas para placas de som -> https://github.com/alsa-project/alsa-tools
	amberol                      # Um simples reprodutor de músicas para GNOME -> https://gitlab.gnome.org/World/amberol
	android-tools                # Ferramentas para plataforma Android -> https://archlinux.org/packages/extra/x86_64/android-tools
	apostrophe                   # Editor de Markdown simples e bonito -> https://gitlab.gnome.org/World/apostrophe
	arduino-cli                  # Arduino CLI -> https://github.com/arduino/arduino-cli
	awesome-terminal-fonts       # Fontes para o terminal -> https://github.com/gabrielelana/awesome-terminal-fonts
	bat                          # Uma alternattiva ao comando cat com sintaxe highlight e numeros de linhas -> https://github.com/sharkdp/bat
	bitwarden                    # Gerenciador de senhas -> https://bitwarden.com
	binwalk                      # Ferramenta para análise de firmware -> https://github.com/ReFirmLabs/binwalk
	brightnessctl                # Ferramenta para alterar brilho da tela -> https://github.com/Hummer12007/brightnessctl
	btop                         # Monitor de recursos moderno -> https://github.com/aristocratos/btop
	clipmenu                     # Gerenciar área de transferência usando dmenu -> https://github.com/cdown/clipmenu
	cmake                        # Ferramenta de compilação -> https://cmake.org
	collision                    # Verificar hashes de arquivos -> https://github.com/GeopJr/Collision
	cppcheck                     # Linter de análise estática para C/C++ -> https://github.com/danmar/cppcheck
	ctop                         # Alternativa ao top -> https://github.com/bcicen/ctop
	cython                       # Extensões C para Python -> https://github.com/cython/cython
	dbeaver                      # Ferramenta de gerenciamento de banco de dados -> https://github.com/dbeaver/dbeaver
	discord                      # Discord -> https://discord.com
	dnsmasq                      # Um servidor de DNS e DHCP -> https://thekelleys.org.uk/dnsmasq/doc.html
	docker                       # Docker -> https://www.docker.com
	docker-compose               # Docker Compose -> https://docs.docker.com/compose
	eartag                       # Editor de metadados de músicas -> https://gitlab.gnome.org/World/eartag
	emblem                       # Gerar avatares apartir de ícones simbólicos -> https://gitlab.gnome.org/World/design/emblem/
	esptool                      # Ferramenta para lidar com firmwares em microcontroladores Espressif -> https://docs.espressif.com/projects/esptool/en/latest/esp32/
	eyedropper                   # Color Picker -> https://github.com/FineFindus/eyedropper
	eza                          # Alternativa ao comando ls -> https://github.com/eza-community/eza
	filezilla                    # Cliente FTP -> https://filezilla-project.org
	firefox                      # Navegador Web
	flameshot                    # Ferramenta de captura de tela com recursos adicionais -> https://github.com/flameshot-org/flameshot
	flashrom                     # Programa para ler, gravar, apagar e verificar BIOS/ROM (CH341A) -> https://github.com/flashrom/flashrom
	foremost                     # Ferramenta para recuperação de arquivos -> https://github.com/korczis/foremost
	gdm                          # Gerenciador de tela de login do Gnome -> https://help.gnome.org/admin/gdm/
	gimp                         # Editor de imagens bitmap -> https://www.gimp.org/
	git                          # Sistema de controle de versão
	github-cli                   # GitHub CLI -> https://git-scm.com/
	gnome-browser-connector      # Browser integration for GNOME Shell
	gparted                      # Gerenciador de discos -> https://gparted.org/
	helvum                       # Um painel patch para PipeWire -> https://github.com/relulz/helvum
	htop                         # Monitor de recursos -> https://github.com/htop-dev/htop/
	inkscape                     # Editor de gráficos vetoriais -> https://inkscape.org/
	intel-compute-runtime        # Intel Compute Runtime
	ipython                      # Shell interativo para Python -> https://github.com/i/nkscape/inkscape
	jupyter-notebook             # Jupyter Notebook - https://jupyter.org/
	knockd                       # Port-knock server
	libreoffice-still            # Suíte de escritório -> https://pt-br.libreoffice.org/
	libreoffice-still-pt-br      # Language pack for LibreOffice (pt-br)
	linux-zen                    # The Linux ZEN kernel and modules
	mesa-demos                   # Mesa demos
	mesa-utils                   # Mesa utilities
	ncdu                         # Utilitário para análise de uso de disco
	neofetch                     # Exibe informações do sistema -> https://github.com/dylanaraps/neofetch
	network-manager-applet       # Applet para gerenciar conexões de rede
	newsflash                    # Leitor de feed RSS -> https://gitlab.com/news-flash/news_flash_gtk
	nextcloud-client             # Cliente Nextcloud
	noto-fonts                   # Noto TTF fonts
	noto-fonts-extra             # Noto TTF fonts
	nyx                          # Ferrameta para monitorar status do TOR
	obs-studio                   # Gravação e streaming de vídeo -> https://obsproject.com/pt-br/download
	pacman-contrib               # Utilitários para o pacman (dependência da extensão Arch Linux Updates Indicator)
	palette                      # Um app de paleta de cores para GNOME -> https://gitlab.gnome.org/World/design/palette
	paper-clip                   # Ferramenta para editar metadados de PDFs -> https://github.com/Diego-Ivan/Paper-Clip
	picocom                      # Terminal Emulator -> https://github.com/npat-efault/picocom
	pypy                         # Python escrito em Python -> https://github.com/pypy/pypy
	python-devtools              # Dev tools for Python
	python-pipx                  # Instalador de pacotes Python globalmente em ambientes virtuais isolados -> https://github.com/pypa/pipx
	python-poetry                # Gerenciador de dependências Pythonwoeusb-ng 0.2.12-3 -> https://github.com/python-poetry/poetry
	qbittorrent                  # Cliente BitTorrent -> https://www.qbittorrent.org/
	raider                       # Ferramenta para excluir arquivos permanentemente -> https://github.com/ADBeveridge/raider
	reflector                    # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
	rust                         # Rust programming language -> https://www.rust-lang.org/
	share-preview                # Visualizar e depurar tags de metadados de sites para compartilhamento em mídias sociais -> https://github.com/rafaelmardojai/share-preview/
	shfmt                        # Formatador de scripts shell
	showtime                     # Reprodutor de vídeos para GNOME
	sof-firmware                 # Firmware aberto de som
	speedtest-cli                # Teste de velocidade da internet
	supercollider                # Plataforma de síntese de áudio em tempo real -> https://github.com/supercollider/supercollider
	syncthing                    # Sincronização de arquivos em rede local -> https://github.com/syncthing/syncthing
	telegram-desktop             # Telegram
	testdisk                     # Ferramenta para recuperar arquivos
	texlive-langportuguese       # Suporte do Tex Live para Português
	texlive-latexextra           # Complementos para Tex Live
	texlive-plaingeneric         # Pacotes extras para latex
	texlive-publishers           # Estilos de publicação, teses, etc.
	thunderbird                  # Cliente de e-mail -> https://www.thunderbird.net/pt-BR/
	tk                           # A windowing toolkit for use with tcl
	tldr                         # Manual pages with practical examples
	tmux                         # Terminal multiplexer
	tor                          # Anonymizing overlay network for TCP (The Onion Router)
	torbrowser-launcher          # Navegador Tor
	traceroute                   # Traceroute
	ttf-fira-code                # Fonte Fira Code
	ttf-jetbrains-mono           # Fonte JetBrains Mono
	ttf-liberation               # Fonte Liberation (recomendado para Steam)
	ttf-times-new-roman          # Fonte Times New Roman
	virtualbox-guest-iso         # The official VirtualBox Guest Additions ISO
	virtualbox-host-modules-arch # VirtualBox Host kernel modules for Arch Linux
	virtualbox                   # VirtualBox -> https://www.virtualbox.org/
	vpl-gpu-rt                   # VPL GPU Ray Tracing
	wget                         # Ferramenta para baixar arquivos da internet
	whois                        # Cliente WHOIS
	wireguard-tools              # Wireguard support
	wireshark-qt                 # Analisador de protocolos de rede
	wine-mono                    # Wine Mono .NET support
	xorg-xkill                   # Kill a client by its X resource
	zsh                          # Z Shell -> https://github.com/zsh-users/zsh
)

MULTILIB=(
	lib32-vulkan-intel # Open-source Vulkan driver for Intel GPUs - 32-bit
	wine               # Compatibility layer for running Windows applications
	winetricks
)

AUR=(
	arduino                         # Arduino IDE v1
	arduino-ide-bin                 # Arduino IDE v2 -> https://github.com/arduino/arduino-ide
	anki-bin                        # Aplicativo de flashcards -> https://github.com/ankitects/anki
	anydesk-bin                     # Acesso remoto a dispositivos -> https://anydesk.com
	chirp-next                      # Programa para programar rádios amadores -> https://chirpmyradio.com/projects/chirp/wiki/Home
	chromedriver                    # WebDriver for Chrome -> https://chromedriver.chromium.org/
	devtoolbox                      # Aplicativo com conjunto de ferramentas úteis para desenvolvedores -> https://github.com/aleiepure/devtoolbox
	eloquent                        # App para revisão de ortografia -> https://github.com/sonnyp/Eloquent
	gearlever                       # Ferramentar para gerenciar AppImages -> https://github.com/mijorus/gearlever
	github-desktop                  # GitHub Desktop
	gnome-shell-extension-installer # Instalador de extensões do GNOME Shell
	google-chrome                   # Navegador para testes funcionais com Selenium
	google-earth-pro                # Google Earth
	httpie-desktop-bin              # HTTPie para Desktop -> https://github.com/httpie/desktop
	librewolf-bin                   # Fork do Firefox focado em privacidade -> https://codeberg.org/librewolf/source
	localsend-bin                   # Ferramenta para compartilhar arquivos pela rede local -> https://github.com/localsend/localsend
	mini-text                       # Um editor de texto muito simples -> https://github.com/Nokse22/mini-text
	nautilus-open-in-ptyxis         # Adiciona opção de abrir pasta no terminal ao menu de contexto
	netdiscover                     # ARP Scanner
	netinstall-gui                  # Mikrotik Net Install
	noaa-apt                        # Para decodificação de imagens de sinais de rádio dos satélites NOAA -> https://github.com/martinber/noaa-apt
	obs-gstreamer                   # Plugin para OBS Studio
	ptyxis                          # Terminal
	stellarium-bin                  # Planetário -> https://github.com/Stellarium/stellarium
	tex-fmt                         # Formatador de arquivos LaTeX -> https://github.com/WGUNDERWOOD/tex-fmt
	textidote-bin                   # TODO: VERIFICAR USO
	torcheck                        # Verifica se está conectado à rede Tor
	vscodium-bin                    # VS Codium -> https://github.com/VSCodium/vscodium
	winbox                          # Ferramenta para gerenciar roteadores MikroTik v4
	winbox3                         # Ferramenta para gerenciar roteadores MikroTik v3
)

PIPX=(
	ignr      # Cria arquivos .gitignore -> https://github.com/Antrikshy/ignr.py
	mkx       #  Tool to exploit vulnerabilities in Mikrotik routers  -> https://github.com/henriquesebastiao/mkx
	skyport   # CLI for obtaining information from astronomical objects -> https://github.com/henriquesebastiao/skyport-old
	smokeshow # Coverage badge (Samuel Colvin) -> https://github.com/samuelcolvin/smokeshow
	twine     # Utilities for interacting with PyPI -> https://github.com/pypa/twine
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

# ------------------------ CONFIGURANDO DIRECTÓRIOS ------------------------ #

## Criando diretórios
mkdir -p ~/git
mkdir -p ~/.temp
mkdir -p ~/apps

## Adicionando atalhos ao Nautilus
nautilus -q
echo "file:///home/$USER/apps 📦 apps" >>~/.config/gtk-3.0/bookmarks
echo "file:///home/$USER/git 💾 git" >>~/.config/gtk-3.0/bookmarks
echo "file:///home/$USER/.temp 🕖 .temp" >>~/.config/gtk-3.0/bookmarks

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

# --------------------------- COMPILAÇÃO DE PACOTES --------------------------- #

## SDR++
cd ~/apps || exit
git clone https://github.com/AlexandreRouma/SDRPlusPlus.git
cd SDRPlusPlus || exit
mkdir build && cd build || exit
cmake ..
make -j 8
chmod +x ../create_root.sh
sh ../create_root.sh
sudo make install

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
# TODO: Adicionar configuração do spaceship

log "[INFO] - Configurações do Spaceship Prompt adicionadas."

## Adicionando aliases
# TODO: Adicionar configuração de aliases

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

## Configurando VS Codium
cp home/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/

# Verifica se o arquivo codium-extensions.txt existe
if [ ! -f coium-extensions.txt ]; then
	log "[ERRO] - Arquivo codium-extensions.txt não encontrado."
fi

# Lê o arquivo codium-extensions.txt linha por linha e instala cada extensão
while IFS= read -r extension; do
	if [ ! -z "$extension" ]; then
		echo "Instalando extensão: $extension"
		codium --install-extension "$extension"
	fi
done <extensions.txt

echo "Todas as extensões foram instaladas."

# ----------------------------- FINALIZAÇÃO ----------------------------- #

echo -e "${VERMELHO}[INFO] - Log do script em setup-log.txt${SEM_COR}"
echo -e "${VERMELHO}[INFO] - Lembre-se de adicionar as variáveis de ambiente do Poetry em ~/.profile .${SEM_COR}"
echo -e "${VERMELHO}[INFO] - Lembre-se de adicionar as variáveis de ambiente do Poetry em ~/.pypirc .${SEM_COR}"
echo -e "${VERMELHO}[INFO] - Lembre-se de configurar o ProtonVPN e adiciona-lo aos aplicativos de inicialização com o sistema.${SEM_COR}"
echo -e "${VERDE}[INFO] - Script finalizado! :)${SEM_COR}"
echo -e "${VERDE}[INFO] - Reinicie o computador para aplicar todas as configurações.${SEM_COR}"
