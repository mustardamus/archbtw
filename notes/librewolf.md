# Librewolf Configuration

## Connect to KeepassXC (via browser extension)

In KeepassXC:

- Tools > Settings > Browser Integration > Advanced
  - Use a custom browser configuration location:
    - Browser type: Firefox
    - `~/.librewolf/native-messaging-hosts`
- Connect via browser extension, accept and name connection in KeepassXC

### Enable compact mode

- go to `about:config`
- search for `browser.uidensity`
- set to `1`

### Hide close button (window controls)

1. Enable userChrome.css customization:
   - Go to `about:config`
   - Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`

2. Create userChrome.css file:
   - Navigate to `~/.librewolf/[profile]/chrome/` (create chrome folder if needed)
   - Create `userChrome.css` with:
   ```css
   .titlebar-close {display:none!important;}
   ```

3. Restart LibreWolf for changes to take effect


