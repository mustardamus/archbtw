# DisplayLink USB Monitor Issues

## Mouse Cursor Visibility Problem

When using the external USB monitor (ZenScreen via DisplayLink) with picom compositor:

### Issue
- **Backend: xrender** - Mouse pointer becomes invisible at the top portion of the laptop screen when the USB monitor is connected
- This occurs because picom with xrender backend clips cursor rendering to the virtual display boundaries
- The ZenScreen (rotated to 768x1366) and laptop screen (1920x1200) create a virtual display where the laptop screen extends beyond the bounds

### Current Solution
- Switched picom backend from `xrender` to `glx` in `.config/picom/picom.conf`
- GLX backend properly renders the cursor across the entire display area

### Fallback Strategy
If GLX backend causes system freezes (AMD GPU issues):
1. Switch back to `xrender` backend in picom.conf
2. Disable picom when using the USB monitor:
   ```bash
   pkill picom  # When connecting USB monitor
   picom -b     # When disconnecting USB monitor
   ```

### Configuration Location
- Picom config: `.config/picom/picom.conf`
- Monitor setup script: `.config/i3/monitor_setup.sh`