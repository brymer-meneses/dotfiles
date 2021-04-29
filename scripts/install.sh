

echo 'Installing dotfiles'

# Updates the submodules
git submodule update --recursive --remote

stow --target "$HOME" 		       alacritty
stow --target "$HOME" --no-folding VSCodium
stow --target "$HOME" 		       nvim
stow --target "$HOME" 	           alacritty
stow --target "$HOME" 	           zathura
stow --target "$HOME" 	           spicetify
stow --target "$HOME" 		       gnome-themes --dotfiles


echo 'Successfully installed dotfiles'
