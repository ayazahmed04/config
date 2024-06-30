# Prompt 
#  Import-Module posh-git
# Import-Module oh-my-posh => remove module bcz it's no longer stable in window machine 
  Import-Module Terminal-Icons
#  Set-PoshPrompt Paradox
# Set-PoshPrompt -Theme hotstick.minimal
#
# Icons 
Import-Module -Name Terminal-Icons
#
# PS ReadLine setup option
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None 
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r' 

# Load Prompt config 
# function Get-ScriptDirectory {Split-Path $MyInvocation.ScriptName} 
# $PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'yazi.omp.json'
# oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

#Alias 
Set-Alias vim nvim
Set-Alias ll ls 
Set-Alias g git 
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Oh-my-posh theme reload
 oh-my-posh init pwsh --config ~/.config/powershell/ayaz.omp.json | Invoke-Expression


# Utilities Setup in the most best way possible in the powershell looking up to the top level of the command in the structure is tol look up to them in the way the possible making the top out of it in the looking of the way possible in the building of the app is to provide the user with all the benefits the user wanted to get Mark Makes an Amazing Offer! setup for web development towards 2024 

# App Open from terminal
set-alias chrome  "C:\Program Files\Google\Chrome\Application\chrome.exe"
set-alias vlc "C:\Program Files\VideoLAN\VLC\vlc.exe"


#Add Powershell file in Current Directory
# . $env:USERPROFILE\.config\powershell\powershell_func.ps1
