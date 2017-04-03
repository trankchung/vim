setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab

nnoremap <buffer> <localleader>c I#<Space><C-C>
inoremap <buffer> <localleader>c <C-C>I#<Space><C-C>

nnoremap <buffer> <localleader>dc Ir"""<Return>"""<C-C>
inoremap <buffer> <localleader>dc r"""<Return>"""<C-C>
