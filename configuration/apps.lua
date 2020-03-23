local filesystem = require('gears.filesystem')
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'termite',
    editor = 'code',
    rofi = 'rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi',
    lock = 'lock',
    quake = 'termite --title QuakeTerminal'
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    --'compton --config ' .. filesystem.get_configuration_dir() .. '/configuration/compton.conf',
    '/usr/bin/compton --config ~/.config/compton.conf -b',
    'blueberry-tray', -- Bluetooth tray icon
    'xfce4-power-manager', -- Power manager
    'numlockx on',
    'sleep 5',
    '/usr/bin/feh --bg-scale ~/Images/web-development-wallpaper3.jpg',
    '/usr/bin/setxkbmap -layout "fr,us,ar"',
    '/usr/bin/setxkbmap -option "grp:alt_shift_toggle"',
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)' -- credential manager
  }
}
