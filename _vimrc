" Pathongen {
    execute pathogen#infect()
" }

" Common {
    set nocompatible
    syntax on
    filetype plugin indent on
    set encoding=utf-8
    set history=1000
    set mouse=a
    set mousehide
    set hlsearch
    set number
    set tabstop=2 shiftwidth=2 softtabstop=2
    set smarttab expandtab
    set smartindent autoindent
    set nowrap
    set ignorecase
    set backspace=indent,eol,start
    set linespace=0
    set showmatch
    set nobackup

    colorscheme abra

    " Defining leader keys
    let mapleader = ','
    let maplocalleader = '\'

    " Disable Escape key
    " noremap <Esc> <Nop>
    inoremap <Esc> <Nop>
    cnoremap <Esc> <Nop>
    
    " Map to Ctrl+C, same as Escape
    noremap <leader>c <C-C>
    inoremap <leader>c <C-C>
    cnoremap <leader>c <C-C>

    " Edit config file
    nnoremap <leader>ev :vsplit $MYVIMRC<CR>

    " Reload config file
    nnoremap <leader>sv :source $MYVIMRC<CR>
    
    
    " Remap <leader>w to Ctrl+W. <leader>ww to switch window.
    nnoremap <leader>w <C-W>

    " Map buffer navigation
    nnoremap bn :bn<CR> " next buffer
    nnoremap bp :bp<CR> " previous buffer
    nnoremap bd :bd<CR> " close buffer

    " Windows navigation
    nnoremap <tab> <c-w><c-w>
    
    " Folding
    nnoremap <leader>fi :setlocal fdm=indent<CR>
" }


" NERDTree {
    let NERDTreeDirArrows = 0
    let NERDTreeIgnore = ['__pycache__']

    nnoremap <F2> :NERDTree $HOME<CR>
    nnoremap <leader>n :NERDTreeToggle<CR>
    nnoremap <leader>t :NERDTreeToggle<CR>
    " cnoremap nt NERDTree<Space>
" }


" GUI {
    if has('gui_running')
      set lines=40
      set columns=120
      set guioptions-=L	" remove left scrool
      set guioptions-=r	" remove right scroll bar
      set guioptions-=b	" remove bottom scroll bar
      set guioptions-=T	" remove toolbar
      " set guioptions-=m	" remove menu bar
      " set guioptions= 	" turn off all gui widgets

      set lines=55 columns=160

      if has("gui_gtk2")
        set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Regular\ 10,Courier\ New\ Regular\ 10,Andale\ Mono\ Regular\ 10,Menlo\ Regular\ 10,Consolas\ Regular\ 10
      elseif has("gui_mac")
        set guifont=Andale\ Mono\ Regular:h10,Menlo\ Regular:h10,Consolas\ Regular:h10,Courier\ New\ Regular:h10
      elseif has("gui_win32")
        set guifont=DejaVu_Sans_Mono_for_Powerline:h10,Consolas:h11,Courier:h10,Courier_New:h10,Andale_Mono:h10,Menlo:h10
      endif
    else

    endif
" }

" Indentline {
    let g:indentLine_setConceal = 0
" }

" Airline {
    set laststatus=2
    let g:airline#extensions#tabline#enabled = 0
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tmuxline#enabled = 0
    let g:airline_theme='dark'
    " cnoremap at AirlineTheme 
" }

" Tmuxline {
    let g:tmuxline_preset = 'default'
" }

" Tabular {
    " cnoremap tb Tabularize<Space>/
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>
" }

" CtrlP {
    let g:ctrlp_working_path_mode = 'ra'
    " cnoremap cp CtrlP 
    nnoremap <leader>f :CtrlP<CR>
" }

" Syntastic {
    let g:syntastic_check_on_open = 1
    let g:syntastic_error_symbol = "e"
    let g:syntastic_warning_symbol = "w"
"}

" Movement Mapping {
    nnoremap <leader>d <C-D> " Page down using <leader>d instead of Ctrl+D.
    nnoremap <leader>u <C-U> " Page up using <leader>u instead of Ctrl+U.
" }

" JSON Line Format {
    nnoremap <leader>fj :python json_line_format_write()<CR>
" }
