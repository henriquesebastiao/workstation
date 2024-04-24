# Workstation

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=flat&logo=arch-linux&logoColor=white)
![GNU Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white)

Script for installing and configuring a development environment with Arch Linux

### Main configured tools and packages:

<div>
  <img align="center" alt="python" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/python/python-original.svg">
  <img align="center" alt="poetry" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/poetry/poetry-original.svg">
  <img align="center" alt="pycharm" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/pycharm/pycharm-original.svg">
  <img align="center" alt="vscode" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/vscode/vscode-original.svg">
  <img align="center" alt="git" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/git/git-original.svg">
  <img align="center" alt="docker" height="30" width="40" src="img/docker.svg">
  <img align="center" alt="postman" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postman/postman-original.svg">
  <img align="center" alt="jupyter" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/jupyter/jupyter-original.svg">
  <img align="center" alt="dbeaver" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/dbeaver/dbeaver-original.svg">
  <img align="center" alt="nodejs" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nodejs/nodejs-original.svg">
  <img align="center" alt="npm" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/npm/npm-original-wordmark.svg">
  <img align="center" alt="arduino" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/arduino/arduino-original.svg">
  <img align="center" alt="webstorm" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/webstorm/webstorm-original.svg">
  <img align="center" alt="spyder" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/spyder/spyder-original.svg">
</div>

## How to use

Make the file executable:

```bash
chmod +x setup.sh
```

Run script as root:

```bash
sudo ./setup.sh
```

### Table of contents

- [All tools and settings made](#all-tools-and-settings-made)
  - [Packages installed](#packages-installed)
  - [AUR packages installed](#aur-packages-installed)
  - [PIPX packages installed](#pipx-packages-installed)
  - [Configuration](#configuration)
    - [Dual monitor setups and their arrangements](#dual-monitor-setups-and-their-arrangements)
    - [Change pacman configurations](#change-pacman-configurations)
    - [Installing YAY](#installing-yay)
    - [Shell configurations](#shell-configurations)
    - [Configure spaceships prompt theme](#configure-spaceships-prompt-theme)
    - [Configure aliases](#configure-aliases)
    - [Configure ASDF](#configure-asdf)
    - [Configure GIT](#configure-git)
    - [Configure Cloudflare DNS](#configure-cloudflare-dns)
    - [Make directories needed](#make-directories-needed)

## All tools and settings made

### Packages installed

**Core:**

| Package      | Description                                                     |
|--------------|-----------------------------------------------------------------|
| `base-devel` | Group of packages necessary for compiling and building software |
| `dosfstools` | Utilities for FAT file system                                   |
| `net-tools`  | Configuration tools for Linux networking                        |
| `traceroute` | Tracks the route taken by packets over an IP network            |

**Extras:**

| Package                          | Description                                                                             |
|----------------------------------|-----------------------------------------------------------------------------------------|
| `audacity`                       | Audio editor                                                                            |
| `awesome-terminal-fonts`         | Fonts for terminal                                                                      |
| `bat`                            | Cat clone with syntax highlighting                                                      |
| `bitwarden`                      | Password manager                                                                        |
| `bind`                           | A complete, highly portable implementation of the DNS protocol                          |
| `blanket`                        | Background noise app                                                                    |
| `btop`                           | Resource monitor                                                                        |
| `dbeaver`                        | Database manager                                                                        |
| `discord`                        | Chat for gamers                                                                         |
| `docker`                         | Container runtime                                                                       |
| `docker-compose`                 | Container orchestration                                                                 |
| `eza`                            | A modern replacement for ls (community fork of exa)                                     |
| `filezilla`                      | FTP client                                                                              |
| `firefox`                        | Web browser                                                                             |
| `firefox-adblock-plus`           | Adblock Plus extension for Firefox                                                      |
| `firefox-dark-reader`            | Dark Reader extension for Firefox                                                       |
| `flameshot`                      | Screenshot tool                                                                         |
| `fwupd`                          | Firmware update daemon                                                                  |
| `git`                            | Version control system                                                                  |
| `github-cli`                     | GitHub command-line tool                                                                |
| `gnome-browser-connector`        | GNOME Shell extension for browser integration                                           |
| `gnome-shell-extension-caffeine` | GNOME Shell extension to disable the screensaver and auto suspend                       |
| `gnome-terminal`                 | Terminal emulator                                                                       |
| `gparted`                        | Partition editor                                                                        |
| `htop`                           | Interactive process viewer                                                              |
| `inkscape`                       | Vector graphics editor                                                                  |
| `ipython`                        | Interactive Python shell                                                                |
| `jq`                             | Command-line JSON processor                                                             |
| `jupyter-notebook`               | Web-based interactive computing                                                         |
| `keepassxc`                      | Password manager                                                                        |
| `libreoffice-still`              | Office suite                                                                            |
| `mesa-demos`                     | Mesa demos and tools                                                                    |
| `mesa-utils`                     | Mesa utilities                                                                          |
| `ncdu`                           | Disk usage analyzer                                                                     |
| `neofetch`                       | System information tool                                                                 |
| `network-manager-applet`         | Network connection manager                                                              |
| `nodejs`                         | JavaScript runtime                                                                      |
| `noto-fonts`                     | Google Noto fonts                                                                       |
| `noto-fonts-extra`               | Google Noto fonts                                                                       |
| `npm`                            | Node.js package manager                                                                 |
| `obs-studio`                     | Video recording and live-streaming                                                      |
| `onionshare`                     | Secure and anonymous file sharing                                                       |
| `pacman-contrib`                 | Contributed scripts and tools for pacman systems                                        |
| `p7zip`                          | Command-line file archiver                                                              |
| `pyenv`                          | Python version manager                                                                  |
| `python-devtools`                | Python development tools                                                                |
| `python-pipx`                    | Install and run Python applications in isolated environments                            |
| `python-poetry`                  | Python dependency management and packaging                                              |
| `qbittorrent`                    | BitTorrent client                                                                       |
| `reflector`                      | Retrieve and filter the latest Pacman mirror list                                       |
| `rust`                           | Systems programming language                                                            |
| `spyder`                         | Scientific Python development environment                                               |
| `shfmt`                          | Shell script formatter                                                                  |
| `signal-desktop`                 | Encrypted messaging and calling                                                         |
| `speedtest-cli`                  | Command-line interface for speedtest.net                                                |
| `spotify-launcher`               | Spotify launcher                                                                        |
| `syncthing`                      | Continuous file synchronization                                                         |
| `thunderbird`                    | Email client                                                                            |
| `tk`                             | Graphical toolkit for Tcl                                                               |
| `tldr`                           | Command line client for tldr, a collection of simplified and community-driven man pages |
| `tmux`                           | Terminal multiplexer                                                                    |
| `tor`                            | Anonymizing overlay network                                                             |
| `torbrowser-launcher`            | Download, update, and run the Tor Browser                                               |
| `ttf-fira-code`                  | Monospaced font with programming ligatures                                              |
| `ttf-jetbrains-mono`             | Monospaced font for developers                                                          |
| `ttf-liberation`                 | Fonts from the Liberation family                                                        |
| `virtualbox-host-modules-arch`   | VirtualBox host kernel modules for Arch Linux                                           |
| `virtualbox`                     | Virtualization                                                                          |
| `vlc`                            | Media player                                                                            |
| `wget`                           | Network downloader                                                                      |
| `wireshark-qt`                   | Network protocol analyzer                                                               |
| `xorg-xkill`                     | Kill a client by its X resource                                                         |
| `yarn`                           | JavaScript package manager                                                              |
| `zsh`                            | Shell                                                                                   |

**Multilib:**

| Package              | Description                                          |
|----------------------|------------------------------------------------------|
| `lib32-vulkan-intel` | Intel's Vulkan mesa driver (32-bit)                  |
| `steam`              | Valve's digital software delivery system             |
| `wine`               | Compatibility layer for running Windows applications |

### AUR packages installed

| Package                           | Description                     |
|-----------------------------------|---------------------------------|
| `anki-bin`                        | Flashcards                      |
| `arduino-ide-bin`                 | Arduino IDE                     |
| `chromedriver`                    | WebDriver for Chrome            |
| `flyctl-bin`                      | Fly CLI                         |
| `github-desktop`                  | GitHub Desktop                  |
| `gnome-shell-extension-installer` | GNOME Shell extension installer |
| `google-chrome`                   | Web browser                     |
| `google-earth-pro`                | Earth visualization             |
| `localsend-bin`                   | LocalSend                       |
| `postman-bin`                     | API client                      |
| `proton-vpn-gtk-app`              | ProtonVPN                       |
| `pycharm-professional`            | Python IDE                      |
| `stellarium-bin`                  | Stellarium                      |
| `sublime-text-4`                  | Sublime Text                    |
| `torcheck`                        | Check if Tor is working         |
| `visual-studio-code-bin`          | Code editor                     |
| `webstorm`                        | JavaScript IDE                  |
| `winbox`                          | MikroTik Winbox                 |
| `zoom`                            | Video conferencing              |

### PIPX packages installed

| Package | Description               |
|---------|---------------------------|
| `blue`  | Code formatter for Python |
| `ignr`  | Create .ignores files     |
| `isort` | Sort Python imports       |
| `ruff`  | Code linter               |

### Configuration

#### Dual monitor setups and their arrangements:

Path: `/etc/X11/xorg.conf.d/10-monitor.conf`

```
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
```

#### Change pacman configurations:

Path: `/etc/pacman.conf`

- Enable color in pacman output
- Enable `ParallelDownloads = 15`

#### Installing [YAY](https://github.com/Jguer/yay#installation):

```bash
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
```

#### Shell configurations:

- Install ZSH
- Install Oh My Zsh with Spaceship Prompt theme
- Install ZSH plugins: `zsh-autosuggestions`, `zsh-syntax-highlighting`

#### Configure spaceships prompt theme:

Path: `~/.config/spaceship.zsh`

```
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
```

#### Configure aliases:

- Path: `~/.aliases`

```bash
echo "source ~/.aliases" >> ~/.zshrc
```

```bash
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
```

#### Configure ASDF:

- `python`
  - 3.11.9
  - 3.12.3
- `nodejs`
  - latest

#### Configure GIT:

- User: Henrique Sebastião
- Email: contato@henriquesebastiao.com
- Default branch: `main`

#### Configure Cloudflare DNS:

Path: `/etc/resolv.conf`

- `1.1.1.1`
- `1.0.0.1`

#### Make directories needed:

```bash
mkdir -p ~/git
mkdir -p ~/.temp
```