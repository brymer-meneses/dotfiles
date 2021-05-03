

echo 'Installing dotfiles'

# Check if the script is being NOT being
# used in the dotfiles directory
if [ ! -f ".stow" ]; then 
    echo "This script should be executed at the root of the dotfiles directory!"
    exit 1
fi

# Updates the submodules
git pull --recurse-submodules

stow --target "$HOME" 		   alacritty
stow --target "$HOME" --no-folding VSCodium     
stow --target "$HOME" 		   nvim
stow --target "$HOME" 	           zathura
stow --target "$HOME" 	           spicetify
stow --target "$HOME" 		   kitty

stow --target "$HOME" 		   gnome-themes --dotfiles
stow --target "$HOME"              config-files --dotfiles
stow --target "$HOME" --no-folding ulauncher

echo 'Successfully installed dotfiles'
