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

"Highlight unwanted spaces
""""""""""""""""""""""""""
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red

"Show trailing whitespace:
match ExtraWhitespace /\s\+$/
match ExtraWhitespace /\s\+\%#\@<!$/
