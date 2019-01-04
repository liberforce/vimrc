" Use :make to run pylint
" See https://stackoverflow.com/questions/3839454/how-to-use-pylint-in-vim
setlocal makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
setlocal errorformat=%f:%l:\ %m
