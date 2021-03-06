# Path to Oh My Fish install.
set -gx OMF_PATH /Users/Liao/.local/share/omf
set -gx LSCOLORS Gxfxcxdxbxegedabagacad
set fish_greeting ""

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG /Users/Liao/.config/omf

# Custom env
source ~/.config/fish/env.fish

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# pipenv
set pipenv_fish_fancy yes

# Cowsay
# python -c "import sys, random; stdout = sys.stdout; sys.stdout = type('BlackHole', (), {'write': (lambda self, string: '')})(); import this; sys.stdout = stdout; print random.choice(''.join([this.d.get(i, i) for i in this.s]).splitlines()[2:]);" | cowsay -f www | lolcat
# fortune -n 160 50% computers 50% linuxcookie | cowsay -s -W 50 -f www | lolcat

# iterm2 shell integration
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

command -v vg >/dev/null 2>&1; and vg eval --shell fish | source
