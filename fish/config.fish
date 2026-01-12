set fish_greeting
#starship init fish | source

# Safety (Ask before deleting or overwriting)
abbr --add rm "rm -I"
abbr --add mv "mv -i"
abbr --add cp "cp -i"

# Smart Directories
abbr --add mkdir "mkdir -p" # Automatically create parent directories
abbr --add .. "cd .."
abbr --add ... "cd ../.."

# Config Management
abbr --add conf "nano ~/.config/fish/config.fish"
abbr --add src "source ~/.config/fish/config.fish" # Reload config instantly

abbr --add cat bat # Use bat instead of cat (syntax highlighting)
abbr --add ls "eza --icons --group-directories-first"
abbr --add ll "eza -l --icons --group-directories-first --git"
abbr --add la "eza -la --icons --group-directories-first --git"
abbr --add tree "eza --tree --icons"

thefuck --alias fix | source

# Use bat to colorize man pages
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

thefuck --alias | source
