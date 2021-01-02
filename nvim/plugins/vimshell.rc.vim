" ,is: execution shell
nnoremap <silent> ,is :VimShell<CR>

" ,ipy: interactive mode of python
nnoremap <silent> ,ipy :VimShellInteractive python<CR>

" ,ss: evaluation execution for current line in interactive mode
vmap <silent> ,ss :VimShellSendString<CR>

" ,ss in Visual mode: evaluation execution for current line in interactive mode
nnoremap <silent> ,ss <S-v>:VimShellSendString<CR>
