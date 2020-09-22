" Pathongen {
    "execute pathogen#infect()
    "execute pathogen#helptags()
" }

" Plug { https://github.com/junegunn/vim-plug
    call plug#begin('~/.vim/plugged')
      Plug 'godlygeek/csapprox'
      "Plug 'ctrlpvim/ctrlp.vim'
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'Raimondi/delimitMate'
      Plug 'fatih/vim-go'
      Plug 'vim-scripts/groovy.vim'
      Plug 'Yggdroot/indentLine'
      Plug 'marslo/jenkinsfile-vim-syntax'
      Plug 'preservim/nerdtree'
      Plug 'godlygeek/tabular'
      Plug 'edkolev/tmuxline.vim'
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      "Plug 'tpope/vim-endwise'
      "Plug 'tpope/vim-fugitive'
      Plug 'b4b4r07/vim-hcl'
      "Plug 'mustache/vim-mustache-handlebars'
      Plug 'rodjek/vim-puppet'
      Plug 'tpope/vim-rails'
      Plug 'tpope/vim-surround'
      Plug 'hashivim/vim-terraform'

      " Colors
      Plug 'rakr/vim-one'
      Plug 'joshdick/onedark.vim'
    call plug#end()
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
    set t_Co=256
    set t_BE=

    let ayucolor="light"
    colorscheme onehalflight
    set background=light

    " Defining leader keys
    let mapleader = ','
    let maplocalleader = '\'

    " Disable Escape key
    " noremap <Esc> <Nop>
    " inoremap <Esc> <Nop>
    " cnoremap <Esc> <Nop>
    
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
    let NERDTreeDirArrows = 1
    let NERDTreeIgnore = ['__pycache__']
    let NERDTreeWinSize = 25

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
    set conceallevel=2
    let g:indentLine_setConceal = 0
    let g:indentLine_conceallevel = 2
    let g:indentLine_char = '|'
" }

" Airline {
    set laststatus=2
    let g:airline#extensions#tabline#enabled = 0
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tmuxline#enabled = 0
    let g:airline_theme='one'
    " cnoremap at AirlineTheme 
" }

" Tmuxline {
          "\'a'    : ' (•‿•) ',
    let g:tmuxline_powerline_separators = 0
    let g:tmuxline_status_justify = 'left'
    let g:tmuxline_preset = {
          \'a'    : 'ヽ(^o^)丿 ',
          \'b'    : '',
          \'c'    : '',
          \'win'  : ['#I'],
          \'cwin' : ['#I'],
          \'x'    : '',
          \'y'    : '#(date "+%-I:%M %p %Z")',
          \'z'    : '#(date "+%a, %b %-d, %Y")'}
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
 
" Groovy syntax highlighting {
    au BufRead,BufNewFile bootstrap set syntax=groovy
    au BufRead,BufNewFile Controlfile set syntax=yaml
    au BufRead,BufNewFile Jenkinsfile set syntax=groovy
    au BufRead,BufNewFile Releasefile set syntax=groovy
    au BufRead,BufNewFile Triggerfile set syntax=groovy
" }

" COC Intellisense Completion {
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" }
"
