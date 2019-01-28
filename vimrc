"Chose a color palette appropriate to dark background
set background=dark

"Enable syntax highlighting
syntax on

"Globally change the leader key
let mapleader = "§"

"Enable:
"- filetype detection
"- filetype-based plugin loading from the 'ftplugin' dir
"- filetype-based indent plugins from the 'indent' dir
"https://robots.thoughtbot.com/writing-vim-syntax-plugins
filetype plugin indent on

"Comply to modelines in files
"http://vim.wikia.com/wiki/Modeline_magic
set modeline
"Search modeline in the n first lines of the file
set modelines=5

"Show line numbers
set number
set relativenumber

" Shortcut to rapidly display hidden characters
" http://vimcasts.org/episodes/show-invisibles/
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,space:·


" FINDING FILES
"""""""""""""""
" See https://www.youtube.com/watch?v=XA2WjJbmmoM

" Allow fuzzy-finding filenames
set path+=**
" Display a menubar for tab completion
set wildmenu

"Highlight unwanted spaces
""""""""""""""""""""""""""
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red

"Show trailing whitespace:
match ExtraWhitespace /\s\+$/
match ExtraWhitespace /\s\+\%#\@<!$/


" SPLITS
""""""""
set splitright
set splitbelow


" IMPROVED MAPPINGS
"""""""""""""""""""
" Don't use arrow keys to force using motions
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Remap Caps-Lock to Esc
" This is done at system level, with gnome-tweak-tool

" Easily move between split windows
" http://vimcasts.org/episodes/working-with-windows/
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
