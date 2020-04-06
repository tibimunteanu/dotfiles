" vundle config
set nocompatible
filetype off
  set rtp+=~/.vim/bundle/Vundle.vim 
  call vundle#begin() 

  Plugin 'VundleVim/Vundle.vim' 
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` 
  " :PluginUpdate     - to update
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve

  " all the plugins must be added after this line

  Plugin 'vimwiki/vimwiki'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'benmills/vimux'
  Plugin 'arcticicestudio/nord-vim'

  " all the plugins must be added before this line

  call vundle#end() 
  filetype plugin indent on 
  syntax on
" end of vundle config

colorscheme nord

set langmenu=en_US.utf8
set encoding=utf-8
set autoread
set number
set relativenumber
set wrap
set display+=lastline
set shiftround
set shiftwidth=2
set expandtab
set textwidth=80
set matchtime=5
set nolist
set scrolloff=3
set sidescrolloff=5
set t_Co=16 "allow color schemes to do bright colors without forcing bold
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set clipboard=unnamed
set shortmess+=A
set noshowmode
set noruler
set fillchars+=vert:│
set cmdheight=1
set timeoutlen=1000 
set ttimeoutlen=0

" status line
function! GitInfo()
  let git = fugitive#head()
  if git != ''
    return fugitive#head()
  else
    return ''
endfunction

hi StatusLine ctermbg=NONE ctermfg=008
hi StatusLineNC ctermbg=NONE ctermfg=008

set laststatus=2
set statusline=
set statusline+=\ %<%f
set statusline+=\ %{GitInfo()}
set statusline+=%=
set statusline+=%3p%%\ 

" cursor settings
" 1 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
let &t_SI="\<esc>[6 q" "SI = INSERT mode cursor
let &t_SR="\<esc>[4 q" "SR = REPLACE mode cursor
let &t_EI="\<esc>[2 q" "EI = NORMAL mode cursor

" write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch=2

" disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed=1

" set custom vimux ps:
let g:VimuxPromptString='cmd: '

let mapleader=";"

" edit and source dotfiles
nnoremap <leader>ev :vsplit /media/tibi/win/dev/dotfiles/.vimrc<cr><C-w>l:e /media/tibi/win/dev/dotfiles/.tmux.conf<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" prompt for a vimux command
map <silent> <leader>vp :VimuxPromptCommand<cr>
" run last vimux command
map <silent> <leader>vl :VimuxRunLastCommand<cr>

" back to normal mode with jk
inoremap <esc> <esc>:echo<cr>a
inoremap jk <esc>

" disable arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" clear info with enter
nnoremap <cr> :echo<cr>

" jk scroll
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" split naviation with alt
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> h :TmuxNavigateLeft<cr>
nnoremap <silent> j :TmuxNavigateDown<cr>
nnoremap <silent> k :TmuxNavigateUp<cr>
nnoremap <silent> l :TmuxNavigateRight<cr>

" code navigation
nnoremap H ^
nnoremap L $
nnoremap - <C-o>
nnoremap _ <C-i>
nnoremap gs *zz

" folding
nnoremap <space> za

" format
nnoremap gf mlggVG=`l:delm l<cr>
nnoremap gq mmggVGgq`mzz:delm m<cr>
""" aligns function parameters under open parentheses
nnoremap <leader>l 0zof(mmy0/)<CR>a<CR><esc>`mvi(:s/\n//g<CR>`mvi(:s/,\s\+/, /g<CR>`mvi(<CR>:s/\%V,/,\r/g<CR>`mj0V/)<CR>:s/^/<C-r>"/g<CR>`mj<C-q>/)<CR>^r <esc>0/{<CR>:delm m<CR>
""" joins all function parameters in one line
nnoremap <leader>_ vi(<CR>:s/\%V,\s*\r*\n*\r*\s*/, /<CR>

" open help in vert split
nnoremap <leader>h :vert bo help 

" search for word under cursor
nnoremap <leader>/ :%s/<c-r><c-w>//g

" sort lines
vnoremap <leader>az :g/^/m'<
vnoremap <leader>za :g/^/m'>

" visual mode enhancements
vnoremap <space> <esc>
vnoremap p "_dp
vnoremap > >gv
vnoremap < <gv

" visual mode shortcuts
vnoremap H ^
vnoremap L $
vnoremap , t,
vnoremap ; t;
vnoremap 0 t)
vnoremap 9 i(
vnoremap [ ib
vnoremap in9 <esc>/(<cr>vi(
vnoremap il9 <esc>?)<cr>vi(
vnoremap in[ <esc>/{<cr>vi{
vnoremap il[ <esc>?}<cr>vi{

" operator pending shortcuts
onoremap H ^
onoremap L $
onoremap , t,
onoremap ; t;
onoremap 0 t)
onoremap 9 i(
onoremap [ ib
onoremap in9 :<c-u>normal! /(<cr>vi(<cr>
onoremap il9 :<c-u>normal! ?)<cr>vi(<cr>
onoremap in[ :<c-u>normal! /{<cr>vi{<cr>
onoremap il[ :<c-u>normal! ?}<cr>vi{<cr>

" some common typos
iabbrev lenght length
iabbrev Lenght Length

