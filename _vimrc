" Plug { https://github.com/junegunn/vim-plug
    call plug#begin('~/.vim/plugged')
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'godlygeek/csapprox'
      "Plug 'ctrlpvim/ctrlp.vim'
      Plug 'Raimondi/delimitMate'
      Plug 'junegunn/fzf'
      Plug 'vim-scripts/groovy.vim'
      Plug 'Yggdroot/indentLine'
      Plug 'davidhalter/jedi-vim'
      Plug 'marslo/jenkinsfile-vim-syntax'
      Plug 'preservim/nerdcommenter'
      Plug 'preservim/nerdtree'
      Plug 'xuyuanp/nerdtree-git-plugin'
      Plug 'godlygeek/tabular'
      Plug 'preservim/tagbar'
      Plug 'edkolev/tmuxline.vim'
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      Plug 'flazz/vim-colorschemes'
      Plug 'ryanoasis/vim-devicons'
      "Plug 'tpope/vim-endwise'
      Plug 'dag/vim-fish'
      "Plug 'tpope/vim-fugitive'
      Plug 'airblade/vim-gitgutter'
      Plug 'fatih/vim-go'
      "Plug 'b4b4r07/vim-hcl'
      "Plug 'mustache/vim-mustache-handlebars'
      Plug 'rodjek/vim-puppet'
      Plug 'tpope/vim-rails'
      Plug 'luochen1990/rainbow'
      Plug 'tpope/vim-surround'
      "Plug 'mhinz/vim-startify'
      Plug 'hashivim/vim-terraform'
      Plug 'zigford/vim-powershell'

      " Colors
      Plug 'morhetz/gruvbox'
      Plug 'joshdick/onedark.vim'
      Plug 'ashfinal/vim-colors-paper'
      Plug 'rakr/vim-one'
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
    set wildmode=longest,list

    let ayucolor="light"
    let g:gruvbox_sign_column="bg0"
    colorscheme paper
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

    inoremap jk <C-C>

    " Edit config file
    nnoremap <leader>ev :vsplit $MYVIMRC<CR>

    " Reload config file
    nnoremap <leader>sv :source $MYVIMRC<CR>
    
    
    " Remap <leader>w to Ctrl+W. <leader>ww to switch window.
    nnoremap <leader>w <C-W>

    " Map pane resizing
    nnoremap <leader>l <c-w>5>
    nnoremap <leader>h <c-w>5<
    nnoremap <leader>k <c-w>5+
    nnoremap <leader>j <c-w>5-

    " Map buffer navigation
    nnoremap bn :bn<CR> " next buffer
    nnoremap bp :bp<CR> " previous buffer
    nnoremap bd :bd<CR> " close buffer

    " Map tab moving navigation
    nnoremap tn :tabmove +1<CR> " move tab right
    nnoremap tp :tabmove -1<CR> " move tab left

    " Windows navigation
    nnoremap <tab> <c-w><c-w>
    nnoremap gh <c-w>h
    nnoremap gl <c-w>l
    nnoremap gk <c-w>k
    nnoremap gj <c-w>j
    nnoremap gn <c-w>h<c-w>h<c-w>h<c-w>h<c-w>h
    
    " Folding
    nnoremap <leader>fi :setlocal fdm=indent<CR>

    " Movement
    nnoremap <leader>d <C-D> " Page down using <leader>d instead of Ctrl+D.
    nnoremap <leader>u <C-U> " Page up using <leader>u instead of Ctrl+U.

    " JSON Line Format
    nnoremap <leader>fj :python json_line_format_write()<CR>
 
    " Groovy syntax highlighting
    autocmd BufRead,BufNewFile bootstrap set syntax=groovy
    autocmd BufRead,BufNewFile Controlfile set syntax=yaml
    autocmd BufRead,BufNewFile Jenkinsfile set syntax=groovy
    autocmd BufRead,BufNewFile Releasefile set syntax=groovy
    autocmd BufRead,BufNewFile Triggerfile set syntax=groovy

    " COC
    let g:coc_disable_startup_warning = 1
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    " Transparent background
    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
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
    endif
" }

" Airline {
    set laststatus=2
    let g:airline_theme='cool'
    let g:airline_powerline_fonts = 0
    let g:airline#extensions#tmuxline#enabled = 0
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_alt_sep = '|'
    cnoremap alt AirlineTheme 
" }

" CtrlP {
    let g:ctrlp_working_path_mode = 'ra'
    " cnoremap cp CtrlP 
    " nnoremap <leader>f :CtrlP<CR>
" }

" fzf {
    nnoremap <leader>f :FZF<CR>
" }

" NERDTree {
    let NERDTreeDirArrows = 1
    let NERDTreeIgnore = ['__pycache__']
    let NERDTreeWinSize = 25

    autocmd vimenter * map - i
    autocmd vimenter * map \| s

    nnoremap <leader>e :NERDTreeToggle<CR>
    nnoremap <leader>n :NERDTreeToggle<CR>
    " cnoremap nt NERDTree<Space>

    " Start NERDTree when Vim is started without file arguments
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" }

" Indentline {
    set conceallevel=2
    let g:indentLine_setConceal = 0
    let g:indentLine_conceallevel = 2
    let g:indentLine_char = '|'
" }

" Tabular {
    " cnoremap tb Tabularize<Space>/
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>
" }

" Tmuxline {
          "\'a'    : ' (•‿•) ',
    let g:tmuxline_powerline_separators = 0
    let g:tmuxline_status_justify = 'left'
    let g:tmuxline_preset = {
          \'a'    : 'LOCAL',
          \'b'    : '',
          \'c'    : '',
          \'win'  : ['#I#W'],
          \'cwin' : ['#I#W'],
          \'x'    : '',
          \'y'    : '#(date "+%-I:%M %p %Z")',
          \'z'    : '#(date "+%a, %b %-d, %Y")'}
" }


" Syntastic {
    let g:syntastic_check_on_open = 1
    let g:syntastic_error_symbol = "e"
    let g:syntastic_warning_symbol = "w"
"}

" TagBar {
    nnoremap <leader>t :TagbarToggle<CR>
" }

" jedi-vim {
  " No docstring preview
  autocmd FileType python setlocal completeopt-=preview
  " No autotrigger. C-Space to trigger.
  let g:jedi#popup_on_dot = 0
  let g:jedi#usages_command = ""
  let g:jedi#show_call_signatures = "0"
" }

" Terraform {
  autocmd BufRead,BufNewFile *.hcl set filetype=terraform
  let g:terraform_align=1
  let g:terraform_fmt_on_save=1
" }

