function update-mirrors --description 'Update pacman mirrorlists with reflector'
	sudo reflector --country Germany --sort rate --latest 5 --protocol https --save /etc/pacman.d/mirrorlist
end
