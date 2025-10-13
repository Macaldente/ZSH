" --- Grundlegende Einstellungen ---
syntax on
set number           " Zeilennummern
set autoindent       " Automatisches Einrücken
set expandtab        " Tabs in Leerzeichen konvertieren
set tabstop=4        " Breite eines Tabulators (4 Leerzeichen)
set shiftwidth=4     " Breite eines automatischen Einzugs
set backspace=indent,eol,start " Bessere Backspace-Funktionalität

" --- FZF-Integration ---
" fzf-runtimepath-Anpassung
set rtp+=/opt/homebrew/opt/fzf
set rtp+=/usr/share/doc/fzf/examples

" FZF-Mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <leader>fg :GFiles?<CR> " Git-Dateien suchen
nnoremap <leader>fs :Ag<CR>      " Text in Dateien suchen
