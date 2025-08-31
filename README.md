# Arch Linux Setup Scripts

## Packages

### [ai.sh](./setup/ai.sh)

- **lmstudio**: Local LLM runner and chat interface [Docs](https://lmstudio.ai/docs/app)

### [battery.sh](./setup/battery.sh)

- **acpi**: Advanced Configuration and Power Interface tools [Docs](https://wiki.archlinux.org/title/ACPI_modules)
- **amd-ucode**: AMD CPU microcode updates [Docs](https://wiki.archlinux.org/title/Microcode)
- **tlp**: Advanced laptop power management [Docs](https://linrunner.de/tlp/index.html)

### [cli.sh](./setup/cli.sh)

- **man-db**: Manual page database implementation [Docs](https://man-db.nongnu.org/)
- **man-pages**: Linux manual pages collection [Docs](https://man.archlinux.org/)
- **bind**: DNS lookup utilities (dig, nslookup) [Docs](https://bind9.readthedocs.io/)
- **perl-file-mimeinfo**: Perl library for MIME type detection [Docs](https://man.archlinux.org/listing/extra/perl-file-mimeinfo/)
- **perl-image-exiftool**: Read/write image metadata tool [Docs](https://exiftool.org/)
- **rsync**: Fast incremental file transfer utility [Docs](https://rsync.samba.org/)
- **restic**: Fast encrypted backup program [Docs](https://restic.readthedocs.io/)
- **imagemagick**: Image processing and conversion suite [Docs](https://imagemagick.org/)
- **ffmpeg**: Complete multimedia processing solution [Docs](https://ffmpeg.org/)
- **less**: Terminal pager for text files [Docs](https://www.greenwoodsoftware.com/less/)
- **reflector**: Arch Linux mirror list updater [Docs](https://xyne.dev/projects/reflector/)
- **dysk**: Better disk usage information tool [Docs](https://github.com/Canop/dysk)
- **fd**: Simple fast find alternative [Docs](https://github.com/sharkdp/fd)
- **ripgrep**: Fast recursive grep alternative [Docs](https://github.com/BurntSushi/ripgrep)
- **fzf**: Command-line fuzzy finder [Docs](https://github.com/junegunn/fzf)
- **tealdeer**: Fast tldr implementation in Rust [Docs](https://tealdeer-rs.github.io/tealdeer/)
- **7zip**: File archiver with compression [Docs](https://7-zip.org/)
- **jq**: Command-line JSON processor [Docs](https://jqlang.org/)
- **poppler**: PDF rendering library and tools [Docs](https://poppler.freedesktop.org/)
- **zellij**: Terminal workspace with batteries included [Docs](https://zellij.dev/)
- **nodejs-http-server**: Simple HTTP server for static files [Docs](https://www.npmjs.com/package/http-server)
- **resvg**: SVG rendering library and tool [Docs](https://github.com/RazrFalcon/resvg)
- **sloc**: Source lines of code counter [Docs](https://github.com/flosse/sloc)
- **watchman-bin**: File watching service [Docs](https://aur.archlinux.org/packages/watchman-bin)
- **tailwindcss-bin**: Utility-first CSS framework CLI [Docs](https://tailwindcss.com/docs/installation)
- **air**: Live reload for Go applications [Docs](https://github.com/air-verse/air)
- **hadolint**: Dockerfile linter [Docs](https://github.com/hadolint/hadolint)

### [displaylink.sh](./setup/displaylink.sh)

- **evdi-dkms**: Extensible Virtual Display Interface module [Docs](https://github.com/DisplayLink/evdi)
- **displaylink**: USB display driver for DisplayLink devices [Docs](https://wiki.archlinux.org/title/DisplayLink)

### [docker.sh](./setup/docker.sh)

- **docker**: Container platform and runtime [Docs](https://docs.docker.com/)
- **docker-compose**: Multi-container Docker applications [Docs](https://docs.docker.com/compose/)
- **docker-buildx**: Extended build capabilities for Docker [Docs](https://docs.docker.com/buildx/)
- **lazydocker**: Terminal UI for Docker management [Docs](https://github.com/jesseduffield/lazydocker)

### [dotfiles.sh](./setup/dotfiles.sh)

- **stow**: Symlink farm manager for dotfiles [Docs](https://www.gnu.org/software/stow/)

### [editor.sh](./setup/editor.sh)

- **helix**: Modern modal text editor [Docs](https://docs.helix-editor.com/)
- **taplo-cli**: TOML language server and formatter [Docs](https://taplo.tamasfe.dev/)
- **shfmt**: Shell script formatter [Docs](https://github.com/mvdan/sh)
- **yaml-language-server**: YAML language server protocol implementation [Docs](https://github.com/redhat-developer/yaml-language-server)
- **prettier**: Opinionated code formatter [Docs](https://prettier.io/)
- **tailwindcss-language-server**: CSS IntelliSense for Tailwind [Docs](https://github.com/tailwindlabs/tailwindcss-intellisense)
- **typescript-language-server**: TypeScript/JavaScript language server [Docs](https://github.com/typescript-language-server/typescript-language-server)
- **gopls**: Go language server [Docs](https://go.dev/gopls/)
- **ansible-lint**: Ansible playbook linter [Docs](https://ansible.readthedocs.io/projects/lint/)
- **yamllint**: YAML syntax and style checker [Docs](https://yamllint.readthedocs.io/)
- **mdformat**: CommonMark compliant Markdown formatter [Docs](https://mdformat.readthedocs.io/)
- **golangci-lint**: Fast Go linters runner [Docs](https://golangci-lint.run/)
- **biome**: Fast formatter and linter for web [Docs](https://biomejs.dev/)
- **simple-completion-language-server**: Language server for simple completions [Docs](https://aur.archlinux.org/packages/simple-completion-language-server)
- **vscode-langservers-extracted**: VSCode language servers [Docs](https://aur.archlinux.org/packages/vscode-langservers-extracted)
- **dockerfile-language-server**: Dockerfile language server [Docs](https://aur.archlinux.org/packages/dockerfile-language-server)
- **nodejs-compose-language-service**: Docker Compose language support [Docs](https://aur.archlinux.org/packages/nodejs-compose-language-service)
- **golangci-lint-langserver-bin**: Go linter language server [Docs](https://aur.archlinux.org/packages/golangci-lint-langserver-bin)
- **astrojs-language-server**: Astro framework language server [Docs](https://aur.archlinux.org/packages/astrojs-language-server)
- **markdown-oxide**: Markdown language server [Docs](https://aur.archlinux.org/packages/markdown-oxide)
- **postgrestools-bin**: PostgreSQL development tools [Docs](https://aur.archlinux.org/packages/postgrestools-bin)
- **sql-formatter**: SQL code formatter [Docs](https://aur.archlinux.org/packages/sql-formatter)

### [file-manager.sh](./setup/file-manager.sh)

- **thunar**: Xfce file manager [Docs](https://docs.xfce.org/xfce/thunar/start)
- **thunar-volman**: Removable media management for Thunar [Docs](https://docs.xfce.org/xfce/thunar/start)
- **gvfs**: GNOME virtual file system [Docs](https://wiki.gnome.org/Projects/gvfs)
- **gvfs-mtp**: MTP support for GVFS [Docs](https://wiki.gnome.org/Projects/gvfs)
- **file-roller**: Archive manager for GNOME [Docs](https://fileroller.sourceforge.net/)
- **fuse2**: Filesystem in userspace (version 2) [Docs](https://wiki.archlinux.org/title/FUSE)
- **sshfs**: SSH filesystem client [Docs](https://github.com/libfuse/sshfs)

### [firewall.sh](./setup/firewall.sh)

- **ufw**: Uncomplicated firewall interface [Docs](https://wiki.archlinux.org/title/Uncomplicated_Firewall)

### [git.sh](./setup/git.sh)

- **git**: Distributed version control system [Docs](https://git-scm.com/doc)
- **lazygit**: Simple terminal UI for git [Docs](https://github.com/jesseduffield/lazygit)

### [i3.sh](./setup/i3.sh)

- **i3-wm**: Tiling window manager [Docs](https://i3wm.org/docs/)
- **i3status**: Status bar for i3 [Docs](https://i3wm.org/i3status/)
- **picom**: X compositor for transparency and effects [Docs](https://github.com/yshui/picom)
- **rofi**: Application launcher and window switcher [Docs](https://github.com/davatorium/rofi)
- **xss-lock**: X screen saver locker [Docs](https://bitbucket.org/raymonad/xss-lock)
- **xsettingsd**: X settings daemon [Docs](https://github.com/derat/xsettingsd)
- **xorg-xinput**: X input configuration utility [Docs](https://www.x.org/releases/X11R7.7/doc/man/man1/xinput.1.xhtml)

### [languages.sh](./setup/languages.sh)

- **mise**: Development environment setup tool [Docs](https://mise.jdx.dev/)
- **usage**: CLI usage documentation generator [Docs](https://usage.jdx.dev/)

### [lightdm.sh](./setup/lightdm.sh)

No packages installed.

### [multimedia.sh](./setup/multimedia.sh)

- **flameshot**: Screenshot capture tool [Docs](https://github.com/flameshot-org/flameshot)
- **transmission-gtk**: BitTorrent client with GTK interface [Docs](https://transmissionbt.com/)
- **mpv**: Minimalist media player [Docs](https://mpv.io/)
- **loupe**: Image viewer for GNOME [Docs](https://apps.gnome.org/Loupe/)
- **shotwell**: Photo organizer for GNOME [Docs](https://wiki.gnome.org/Apps/Shotwell)
- **gimp**: GNU Image Manipulation Program [Docs](https://www.gimp.org/)
- **libreoffice-still**: Office productivity suite [Docs](https://www.libreoffice.org/)
- **liferea**: Feed reader for GNOME [Docs](https://lzone.de/liferea/)
- **keepassxc**: Cross-platform password manager [Docs](https://keepassxc.org/)

### [nodejs.sh](./setup/nodejs.sh)

No packages installed.

### [passwordless-sudo.sh](./setup/passwordless-sudo.sh)

No packages installed.

### [screen-sharing.sh](./setup/screen-sharing.sh)

- **xdg-desktop-portal**: Desktop integration portal [Docs](https://flatpak.github.io/xdg-desktop-portal/)
- **xdg-desktop-portal-wlr**: Wlroots desktop portal [Docs](https://github.com/emersion/xdg-desktop-portal-wlr)
- **xdg-desktop-portal-gtk**: GTK desktop portal [Docs](https://github.com/flatpak/xdg-desktop-portal-gtk)
- **slurp**: Wayland region selection utility [Docs](https://github.com/emersion/slurp)

### [snapshots.sh](./setup/snapshots.sh)

- **inotify-tools**: File system event monitoring utilities [Docs](https://github.com/inotify-tools/inotify-tools)
- **grub-btrfs**: GRUB entries for Btrfs snapshots [Docs](https://github.com/Antynea/grub-btrfs)
- **snap-pac**: Pacman hooks for snapper snapshots [Docs](https://github.com/weecology/snap-pac)

### [ssh.sh](./setup/ssh.sh)

No packages installed.

### [sway.sh](./setup/sway.sh)

- **waybar**: Wayland status bar [Docs](https://github.com/Alexays/Waybar)
- **workstyle-git**: Dynamic workspace naming for Sway [Docs](https://aur.archlinux.org/packages/workstyle-git)
- **nwg-look**: GTK3 settings editor for wlroots [Docs](https://github.com/nwg-piotr/nwg-look)
- **papirus-icon-theme**: Modern icon theme [Docs](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **mako**: Wayland notification daemon [Docs](https://github.com/emersion/mako)
- **fuzzel**: Wayland application launcher [Docs](https://codeberg.org/dnkl/fuzzel)
- **ttf-inconsolata-nerd**: Nerd Font patched Inconsolata [Docs](https://github.com/ryanoasis/nerd-fonts)
- **ttf-noto-nerd**: Nerd Font patched Noto [Docs](https://github.com/ryanoasis/nerd-fonts)
- **autotiling**: Automatic tiling for i3 and Sway [Docs](https://github.com/nwg-piotr/autotiling)
- **qogir-gtk-theme**: Flat Design theme for GTK [Docs](https://aur.archlinux.org/packages/qogir-gtk-theme)
- **kvantum-theme-qogir-git**: Qogir theme for Kvantum [Docs](https://aur.archlinux.org/packages/kvantum-theme-qogir-git)
- **xclip**: X11 clipboard manipulation utility [Docs](https://github.com/astrand/xclip)
- **wl-clipboard**: Wayland clipboard utilities [Docs](https://github.com/bugaevc/wl-clipboard)
- **clipman**: Wayland clipboard manager [Docs](https://aur.archlinux.org/packages/clipman)

### [terminal.sh](./setup/terminal.sh)

- **foot**: Fast minimal Wayland terminal emulator [Docs](https://codeberg.org/dnkl/foot)
- **fish**: Friendly interactive shell [Docs](https://fishshell.com/)
- **fisher**: Plugin manager for Fish shell [Docs](https://github.com/jorgebucaran/fisher)
- **bat**: Cat clone with syntax highlighting [Docs](https://github.com/sharkdp/bat)
- **eza**: Modern ls replacement [Docs](https://eza.rocks/)

### [web-browser.sh](./setup/web-browser.sh)

- **ungoogled-chromium-bin**: Privacy-focused Chromium build [Docs](https://aur.archlinux.org/packages/ungoogled-chromium-bin)
- **librewolf-bin**: Privacy-focused Firefox fork [Docs](https://aur.archlinux.org/packages/librewolf-bin)

### [yay.sh](./setup/yay.sh)

- **git**: Distributed version control system [Docs](https://git-scm.com/doc)
- **base-devel**: Basic tools to build packages [Docs](https://archlinux.org/groups/x86_64/base-devel/)
