# Stop display manager
systemctl stop display-manager.service
## Uncomment the following line if you use GDM
killall gdm-x-session

# unbind VTConsoles
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# unbind efi framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind