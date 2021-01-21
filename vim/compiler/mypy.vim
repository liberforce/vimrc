" Vim compiler file
" Compiler:     mypy for Python
" Maintainer:   Luis Menina <liberforce@freeside.fr>
" Last Change:  2021-01-21

if exists("current_compiler")
  finish
endif
let current_compiler = "mypy"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=mypy
CompilerSet errorformat=%f:%l:\ %t%*[^:]:\ %m
