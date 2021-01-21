" Vim compiler file
" Compiler:     flake8 for Python
" Maintainer:   Luis Menina <liberforce@freeside.fr>
" Last Change:  2020-01-21

if exists("current_compiler")
  finish
endif
let current_compiler = "flake8"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=flake8\ --max-line-length=100
CompilerSet errorformat=%f:%l:%c:\ %t%n\ %m
