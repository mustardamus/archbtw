# X11 Desktop Freezing Issues - Investigation & Fixes

## Investigation Date: 2025-09-01

### System Information
- **Window Manager**: i3 with picom compositor
- **GPU**: AMD Radeon (amdgpu driver)
- **External Monitor**: ASUS ZenScreen via DisplayLink USB (DVI-I-1-1)
- **Kernel**: Linux 6.16.4-arch1-1

## Issues Found in Logs

### 1. DisplayLink/evdi Driver Issues (MOST LIKELY CAUSE)
- **Problem**: evdi module is tainting kernel and unsigned
- **Log Evidence**: 
  ```
  evdi: module verification failed: signature and/or required key missing - tainting kernel
  ```
- **Fix**:
  ```bash
  # Temporarily disable DisplayLink to test
  sudo systemctl stop displaylink.service
  sudo systemctl disable displaylink.service
  sudo modprobe -r evdi
  ```
- **Note**: DisplayLink drivers are known to cause stability issues on Linux

### 2. Split Lock Detection
- **Problem**: Kernel split lock detection can cause freezes with certain applications
- **Log Evidence**: 
  ```
  x86/split lock detection: #DB: warning on user-space bus_locks
  ```
- **Fix**: Add to `/etc/default/grub`:
  ```bash
  GRUB_CMDLINE_LINUX_DEFAULT="... split_lock_detect=off"
  # Then update grub:
  sudo grub-mkconfig -o /boot/grub/grub.cfg
  ```

### 3. AMD GPU Power Management
- **Problem**: Potential GPU power management issues
- **Log Evidence**: Multiple PSR support messages, custom brightness curve
- **Fix**: Add kernel parameters:
  ```bash
  amdgpu.ppfeaturemask=0xffffffff amdgpu.dc=1 amdgpu.dpm=1
  ```

### 4. Picom Compositor Issues
- **Problem**: Compositor may cause rendering issues
- **Current Process**: Running with default settings
- **Fix Options**:
  ```bash
  # Option 1: Disable picom completely
  pkill picom
  
  # Option 2: Run with safer settings
  picom --backend glx --vsync --no-use-damage &
  
  # Option 3: Try different backend
  picom --backend xrender --vsync &
  ```

### 5. Touchpad Driver Issues
- **Problem**: Touch jump detection errors
- **Log Evidence**: 
  ```
  SYNA8022:00 06CB:CE67 Touchpad: kernel bug: Touch jump detected and discarded
  ```
- **Fix**: Create `/etc/X11/xorg.conf.d/30-touchpad.conf`:
  ```conf
  Section "InputClass"
      Identifier "touchpad"
      Driver "libinput"
      MatchIsTouchpad "on"
      Option "Tapping" "on"
      Option "NaturalScrolling" "false"
      Option "ClickMethod" "clickfinger"
      Option "DisableWhileTyping" "true"
      Option "AccelProfile" "adaptive"
  EndSection
  ```

## Other Observations

### System Health
- **Memory**: 27GB total, 3.7GB used, 4GB swap (unused) - No memory pressure
- **Temperature**: CPU at 62°C, GPU at 47°C - Normal operating temps
- **Errors**: Very few system errors, no kernel panics or segfaults

### Currently Running
- i3 window manager (PID 2462)
- picom compositor (PID 2512)
- DisplayLink service active
- evdi module loaded (tainted kernel)

## Recommended Test Order

1. **Disable DisplayLink first** (most likely culprit)
   - Test system stability without external monitor
   - If stable, consider alternative monitor connection

2. **If still freezing, disable picom**
   - Test with no compositor
   - Try alternative compositors (compton, xcompmgr)

3. **Apply kernel parameters**
   - Disable split lock detection
   - Add AMD GPU parameters
   - Reboot and test

4. **Monitor during heavy use**
   ```bash
   watch -n 1 sensors  # Monitor temperatures
   journalctl -f       # Watch for errors in real-time
   ```

## Long-term Solutions

1. **Replace DisplayLink**: Use native display outputs (HDMI/DP) when possible
2. **Consider Wayland**: Sway has better compositor integration (but incompatible with DisplayLink)
3. **Update BIOS/UEFI**: Check for firmware updates that might improve stability
4. **Kernel Parameters**: Make successful parameter changes permanent in GRUB

## Monitoring Commands

```bash
# Check if DisplayLink is causing issues
lsmod | grep evdi
systemctl status displaylink

# Monitor GPU performance
watch -n 1 'cat /sys/class/drm/card*/device/gpu_busy_percent'

# Check for compositor issues
ps aux | grep -E "(picom|compton)"

# Real-time system monitoring
journalctl -f --priority=err
```

## References
- [DisplayLink Linux Issues](https://github.com/DisplayLink/evdi/issues)
- [AMD GPU Troubleshooting](https://wiki.archlinux.org/title/AMDGPU)
- [libinput Touchpad Issues](https://wayland.freedesktop.org/libinput/doc/latest/touchpad-jumping-cursors.html)