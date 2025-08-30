# creating real directories will prevent stow from creating a
# symlink to directories in this one. this way, subsequent files
# that are created in the $HOME directory (fish plugins, for example)
# will not end up in this directory.
echo "Creating parent directories..."
find ./.config -type d -not -path "./.git*" | while read -r local_path; do
	parent_path="$(echo $local_path | sed -z "s|^.|$HOME|")"

	if [ ! -d "$parent_path" ]; then
		mkdir -p "$parent_path"
		echo "  - $parent_path"
	fi
done

# dotfiles manager by symlinking
sudo pacman -S --needed --noconfirm stow

echo "Symlinking files in parent directory..."
stow .
