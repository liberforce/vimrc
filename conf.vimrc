"Chose a color palette appropriate to dark background
set background=dark

"Enable syntax highlighting
syntax on

"Enable the filetype detection and indent plugins
filetype plugin indent on

"Comply to modelines in files
"http://vim.wikia.com/wiki/Modeline_magic
set modeline
"Search modeline in the n first lines of the file
set modelines=5

"Show line numbers
set number

"Highlight unwanted spaces
""""""""""""""""""""""""""
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red

"Show trailing whitespace:
match ExtraWhitespace /\s\+$/
match ExtraWhitespace /\s\+\%#\@<!$/

"Add markdown preview
"nnoremap <leader>m :w<cr>:!pandoc -s -f markdown -t html -o expand('%:r').html expand('%:f).md<cr><cr>
"command! execute "

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
