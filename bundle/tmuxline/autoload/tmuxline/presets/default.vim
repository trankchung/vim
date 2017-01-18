fun! tmuxline#presets#default#get()

  let bar = tmuxline#util#create_line_from_hash({
        \ 'a'      : '[#S]',
        \ 'win'    : '#I:#W#F',
        \ 'cwin'   : '#I:#W#F',
				\ 'x'      : '',
				\ 'y'      : '%a %b-%d-%Y',
        \ 'z'      : '%l:%M %p',
        \ 'options': {
        \'status-justify': 'left'}
        \})

  return bar
endfun
