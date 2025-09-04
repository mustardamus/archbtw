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

### Automated Solution (Disabled)
The monitor setup script previously managed picom automatically, but this has been commented out:
- **Previous behavior**: Automatically killed/started picom based on DVI USB monitor connection
- **Current status**: Picom management code commented out in `.config/i3/monitor_setup.sh`
- **Alternative**: TearFree enabled in AMD GPU configuration (`.config/20-amdgpu.conf`)

### Manual Fallback Strategy
If GLX backend causes system freezes (AMD GPU issues):
1. Switch back to `xrender` backend in picom.conf
2. Manual picom control (automated management disabled):
   ```bash
   pkill picom  # When connecting USB monitor
   picom -b     # When disconnecting USB monitor
   ```
3. Alternative: Use TearFree option in AMD GPU configuration (currently enabled)

### Configuration Location
- Picom config: `.config/picom/picom.conf`
- Monitor setup script: `.config/i3/monitor_setup.sh`