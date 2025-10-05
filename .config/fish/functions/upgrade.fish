function upgrade --description 'run pacman & yay upgrades'
    sudo pacman -Syu --noconfirm
	yay -Syu --noconfirm
end

