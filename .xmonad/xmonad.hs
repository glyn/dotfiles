import XMonad
import XMonad.Util.Run(spawnPipe)
import XMonad.Hooks.ManageDocks

main = do
   xmproc <- spawnPipe "xmobar /home/glyn/.xmonad/xmobar.config"

   xmproc <- spawnPipe "setxkbmap -layout gb"

   xmonad $ docks $ def
     { layoutHook = avoidStruts $ layoutHook defaultConfig
     , terminal = "xterm -e /bin/zsh"
     , modMask  = mod4Mask
     , borderWidth = 3
     }

