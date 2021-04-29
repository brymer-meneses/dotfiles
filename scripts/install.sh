
# 
echo 'Installing Stow'
git submodule update --remote --merge


stow --target "$HOME" 		       alacritty
stow --target "$HOME" --no-folding VSCodium
stow --target "$HOME" 		       nvim
stow --target "$HOME" 	           alacritty
stow --target "$HOME" 	           zathura
stow --target "$HOME" 	           spicetify
stow --target "$HOME" 		       gnome-themes --dotfiles


echo 'Successfully installed dotfiles'
