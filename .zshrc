# ------------------------------
# --- Begin of .zshrc config ---
# ------------------------------

# Antidote Plugin Manager installieren
ANTIDOTE_DIR="${HOME}/.zsh/antidote"
if [[ ! -d "$ANTIDOTE_DIR" ]]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_DIR"
fi

# Plugin-Verzeichnis festlegen (vor dem Laden!)
export ANTIDOTE_HOME="${HOME}/.zsh/plugins"

# Antidote laden
source "$ANTIDOTE_DIR/antidote.zsh"

# Plugins laden
antidote load

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY SHARE_HISTORY

# Completion
autoload -Uz compinit && compinit
compinit -d ~/.zcompdump

# --- Alias Sektion ---
# ls
alias ls='eza --group-directories-first --icons=always'
alias ll='eza -l'
alias la='eza -a --group-directories-first --icons=always'
alias lla='eza -la'
# eza = "the BETTER ls"
alias eza='eza --group-directories-first --icons=always'
alias ezal='eza -l'
alias ezaa='eza -a --group-directories-first --icons=always'
alias ezla='eza -la'

# clear the clipboard Funktion
clrclp () {
	pbcopy < /dev/null
}

# Pfade zuerst setzen
export PATH="/opt/homebrew/opt/libxml2/bin:/usr/local/bin/podman:$PATH"

# Tools initialisieren
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# FZF initialisieren (alternative Methode)
if command -v fzf &> /dev/null; then
    eval "$(fzf --zsh)" 2>/dev/null || true
fi

# --- Ende der .zshrc Konfiguration ---
