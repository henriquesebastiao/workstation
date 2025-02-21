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
	act                          # Executa o GitHub Actions localmente para teste
	aircrack-ng                  # Ferramenta para testes de segurança em redes Wi-Fi
	android-tools                # Ferramentas para plataforma Android
	apostrophe                   # Editor de Markdown simples e bonito
	arduino-cli                  # Arduino CLI
	awesome-terminal-fonts       # Fontes para o terminal
	bat                          # Uma alternattiva ao comando cat com sintaxe highlight e numeros de linhas
	bitwarden                    # Gerenciador de senhas
	binwalk                      # Ferramenta para análise de firmware
	brightnessctl                # Ferramenta para alterar brilho da tela
	btop                         # Monitor de recursos moderno
	clipmenu                     # Gerenciar área de transferência usando dmenu
	cmake                        # Ferramenta de compilação
	collision                    # Verificar hashes de arquivos
	cppcheck                     # Linter de análise estática para C/C++
	ctop                         # Alternativa ao top
	cython                       # Extensões C para Python
	dbeaver                      # Ferramenta de gerenciamento de banco de dados
	discord                      # Discord
	dnsmasq                      # Um servidor de DNS e DHCP
	docker                       # Docker
	docker-compose               # Docker Compose
	eartag                       # Editor de metadados de músicas
	emblem                       # Gerar avatares apartir de ícones simbólicos
	esptool                      # Ferramenta para lidar com firmwares em microcontroladores Espressif -> https://docs.espressif.com/projects/esptool/en/latest/esp32/
	eyedropper                   # Color Picker
	eza                          # Alternativa ao comando ls
	filezilla                    # Cliente FTP
	firefox                      # Navegador Web
	firefox-dark-reader          # Extensão para modo escuro
	flameshot                    # Ferramenta de captura de tela com recursos adicionais
	flashrom                     # Programa para ler, gravar, apagar e verificar BIOS/ROM (CH341A)
	foremost                     # Ferramenta para recuperação de arquivos
	gimp                         # Editor de imagens bitmap
	git                          # Sistema de controle de versão
	github-cli                   # GitHub CLI
	gnome-browser-connector      # Browser integration for GNOME Shell
	gparted                      # Gerenciador de discos
	htop                         # Monitor de recursos
	inkscape                     # Editor de gráficos vetoriais
	intel-compute-runtime        # Intel Compute Runtime
	ipython                      # Shell interativo para Python
	jupyter-notebook             # Jupyter Notebook
	knockd                       # Port-knock server
	libreoffice-still            # Suíte de escritório
	libreoffice-still-pt-br      # Language pack for LibreOffice (pt-br)
	linux-zen                    # The Linux ZEN kernel and modules
	mesa-demos                   # Mesa demos
	mesa-utils                   # Mesa utilities
	ncdu                         # Utilitário para análise de uso de disco
	neofetch                     # Exibe informações do sistema
	network-manager-applet       # Applet para gerenciar conexões de rede
	nextcloud-client             # Cliente Nextcloud
	noto-fonts                   # Noto TTF fonts
	noto-fonts-extra             # Noto TTF fonts
	nyx                          # Ferrameta para monitorar status do TOR
	obs-studio                   # Gravação e streaming de vídeo
	pacman-contrib               # Utilitários para o pacman (dependência da extensão Arch Linux Updates Indicator)
	paper-clip                   # Ferramenta para editar metadados de PDFs
	picocom                      # Terminal Emulator
	pypy                         # Python escrito em Python
	python-devtools              # Dev tools for Python
	python-pipx                  # Instalador de pacotes Python globalmente em ambientes virtuais isolados
	python-poetry                # Gerenciador de dependências Pythonwoeusb-ng 0.2.12-3
	qbittorrent                  # Cliente BitTorrent
	raider                       # Ferramenta para excluir arquivos permanentemente
	reflector                    # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
	rust                         # Rust programming language
	shfmt                        # Formatador de scripts shell
	showtime                     # Reprodutor de vídeos para GNOME
	speedtest-cli                # Teste de velocidade da internet
	supercollider                # Plataforma de síntese de áudio em tempo real
	syncthing                    # Sincronização de arquivos em rede local
	telegram-desktop             # Telegram
	testdisk                     # Ferramenta para recuperar arquivos
	texlive-fontsextra           # Fontes extras para Tex Live
	texlive-langportuguese       # Suporte do Tex Live para Português
	texlive-latexextra           # Complementos para Tex Live
	thunderbird                  # Cliente de e-mail
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
	virtualbox                   # VirtualBox
	vpl-gpu-rt                   # VPL GPU Ray Tracing
	wget                         # Ferramenta para baixar arquivos da internet
	whois                        # Cliente WHOIS
	wireguard-tools              # Wireguard support
	wireshark-qt                 # Analisador de protocolos de rede
	wine-mono                    # Wine Mono .NET support
	xorg-xkill                   # Kill a client by its X resource
	zsh                          # Shell
)

MULTILIB=(
	lib32-vulkan-intel # Open-source Vulkan driver for Intel GPUs - 32-bit
	wine               # Compatibility layer for running Windows applications
	winetricks
)

AUR=(
	arduino                         # Arduino IDE v1
	arduino-ide-bin                 # Arduino IDE v2
	anki-bin                        # Aplicativo de flashcards
	anydesk-bin                     # Acesso remoto a dispositivos
	chirp-next                      # Programa para programar rádios amadores
	chromedriver                    # WebDriver for Chrome -> https://chromedriver.chromium.org/
	devtoolbox                      # Aplicativo com conjunto de ferramentas úteis para desenvolvedores
	gearlever                       # Ferramentar para gerenciar AppImages
	gnome-shell-extension-installer # Instalador de extensões do GNOME Shell
	google-chrome                   # Navegador para testes funcionais com Selenium
	google-earth-pro                # Google Earth
	localsend-bin                   # Ferramenta para compartilhar arquivos pela rede local
	mini-text                       # Um editor de texto muito simples
	nautilus-open-in-ptyxis         # Adiciona opção de abrir pasta no terminal ao menu de contexto
	netdiscover                     # ARP Scanner
	netinstall-gui                  # Mikrotik Net Install
	noaa-apt                        # Para decodificação de imagens de sinais de rádio dos satélites NOAA
	obs-gstreamer                   # Plugin para OBS Studio
	ptyxis                          # Terminal
	stellarium-bin                  # Planetário
	tex-fmt                         # Formatador de arquivos LaTeX
	textidote-bin                   # TODO: VERIFICAR USO
	torcheck                        # Verifica se está conectado à rede Tor
	turtle                          # Cliente git para visualizar log e extensão para Nautilus para ícones de status do git
	vscodium-bin                    # VS Codium
	winbox                          # Ferramenta para gerenciar roteadores MikroTik v4
	winbox3                         # Ferramenta para gerenciar roteadores MikroTik v3
)

PIPX=(
	ignr # Cria arquivos .gitignore
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
