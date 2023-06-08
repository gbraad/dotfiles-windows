Import-Module posh-git
Import-Module oh-my-posh
Set-Theme mytheme

Set-PSReadLineOption -Colors @{
     Operator = "White"
     Parameter = "White"
}

function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
#Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

Set-PSReadLineOption -EditMode vi

# Aliases
function devsys  { podman run -d --name=devsys --hostname podman-devsys --systemd=always --cap-add=NET_ADMIN --cap-add=NET_RAW --device=/dev/net/tun -v C:\Users\gbraad\Projects:/home/gbraad/Projects ghcr.io/gbraad-devenv/fedora/systemd:38 }
function devroot { podman exec -it devsys zsh }
function devuser { podman exec -it devsys su - gbraad }
