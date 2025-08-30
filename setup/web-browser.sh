#!/usr/bin/env bash

# privacy fork of chromium web browser
yay -S --needed --noconfirm ungoogled-chromium-bin

# privacy fork of firefox web browser
yay -S --needed --noconfirm librewolf-bin

echo "Open LibreWolf with extensions to install..."
librewolf \
	https://addons.mozilla.org/en-US/firefox/addon/onetab/ \
	https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/ \
	https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/ \
	https://addons.mozilla.org/en-US/firefox/addon/istilldontcareaboutcookies/ \
	https://addons.mozilla.org/en-US/firefox/addon/ghostery/ \
	https://addons.mozilla.org/en-US/firefox/addon/get-rss-feed-url/ \
	https://addons.mozilla.org/en-US/firefox/addon/youtube-addon/ \
	https://addons.mozilla.org/en-US/firefox/addon/easy-youtube-video-download/ \
	https://addons.mozilla.org/en-US/firefox/addon/ddg-lite-search-provider/ \
	https://addons.mozilla.org/en-US/firefox/addon/disconnect/ \
	https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/ \
	https://addons.mozilla.org/en-US/firefox/addon/qogir-dark-for-firefox

	# https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/ \
