```
	██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
	██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
	██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
	██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
	██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
	╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
                                                             
	 █████████████████████████████████████████████▓▒░
	 █▓▒░                                        █▓▒░
	 █▓▒░  █▀▀ █░░█ █▀▀▄ █▀▀ █▀▀█ █▀▀█ █░░█ █░█  █▓▒░
	 █▓▒░  █░░ █▄▄█ █▀▀▄ █▀▀ █▄▄▀ █░░█ █░░█ ▄▀▄  █▓▒░
	 █▓▒░  ▀▀▀ ▄▄▄█ ▀▀▀░ ▀▀▀ ▀░▀▀ █▀▀▀ ░▀▀▀ ▀░▀  █▓▒░
	 █▓▒░                                        █▓▒░
	 ██████████▓▒░github.com/cyberpunx/dotfiles███▓▒░ 

```


## Powershell and Windows Terminal

1. Pick your favoirte font from https://www.nerdfonts.com/ (https://github.com/ryanoasis/nerd-fonts), I use `Hack` or `FiraCode`
2. Configure Windows Terminal
   - Settings:
     - Startup 
        - Default terminal application = Windows Terminal
     - Appearance 
       - Theme = Dark
       - Always show tabs = On
       - Hide title bar = On
       - Show acrylic in tab row = On
       - Use active terminal title as application title = On
       - Always on top = On
     - Defaults
       - Appearance
         - Text -> Color scheme = One Half Dark
         - Text -> Font face = Hack NF
         - Acrylic = On
         - Acrylic Opacity = 50%
3. Install Powershell (Microsoft Sotre)
   - Windows Terminal Settings:
     - Startup 
        - Default profile = Powershell
4. Windows Terminal -> Settings and open JSON settings
   - Duplicate "One Half Dark" theme and rename it
   - Defaults -> Appearance -> Colos scheme  = One Half Dark (Renamed)
5. Install Scoop from https://scoop.sh/ (https://github.com/ScoopInstaller)
6. Install Git for windows
    - `winget install -e --id Git.Git`
7. Copy powershell user profile from the repo
   - `user\.config\powershell\user_profile.ps1`
8. Install Oh My Posh! https://ohmyposh.dev/
   - `Install-Module posth-git -Scope CurrentUser -Force`
   - `Install-Module oh-my-posh -Scope CurrentUser -Force`
9. Install Terminal Icons https://github.com/devblackops/Terminal-Icons
   - `Install-Module -Name Terminal-Icons -Repository PSGallery -Force`
   - (with scoop) `scoop bucket add extras` and `scoop install terminal-icons`
10. Install Z https://github.com/badmotorfinger/z
    - `Install-Module -Name z -Force`
11. Install PSReadLine https://github.com/PowerShell/PSReadLine
    - `Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck`
    - `Set-PSReadLineOption -PredictionSource History`
    - `Set-PSReadLineOption -PredictionViewStyle ListView`
12. Install Fzf Fuzzy finder https://github.com/junegunn/fzf and https://github.com/kelleyma49/PSFzf
    - `scoop install fzf`
    - `Install-Module -Name PSFzf -Scope CurrentUser -Force`
    - `Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'`
    


    
    
         
   
