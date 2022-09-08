# dotfiles

Archivos de configuración para tmux, bash, zsh para for linux / macosx / wsl2

Si se usa el tema agnoster en zsh hay que instalar los powerfonts.

En windows:
  git clone https://github.com/powerline/fonts.git
  Set-ExecutionPolicy Unrestricted  
  cd fonts; install.ps1
  y en la nueva terminal cambiar la fuente a: "fontFace" : "DejaVu Sans Mono for Powerline"


En ubuntu:
  sudo apt-get install powerline fonts-powerline
  
## Configuraciones  

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    # change the theme in the .zshrc to powerlevel10k/powerlevel10k 
    # Add ZSH Plugins 
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    # back into the .zshrc make the plugins add with 
    vim .zshrc
    zsh-autosuggestions zsh-syntax-highlighting

## Gnome Extensions 

    sudo apt install chrome-gnome-shell
    sudo apt install gnome-tweaks
    # Instalar las siguientes extensiones
    - CPU Power Manager
    - Dash to Dock 
    - User Themes 
    - Wireguard
