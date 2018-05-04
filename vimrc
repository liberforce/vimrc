"Chose a color palette appropriate to dark background
set background=dark

"Enable syntax highlighting
syntax on

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

" HARD MODE
"""""""""""

" Don't use arrow keys to force using motions
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
