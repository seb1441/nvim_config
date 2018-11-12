" set nocompatible
" noremap <Space> <Nop>
" let mapleader="\<C-b>"


set termguicolors
set background=dark
colorscheme solarized8

set number
set inccommand=nosplit
set hidden
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
"set history=50
"set ruler
"set showcmd
"set hidden
"set winminheight=0
"set mouse=a

" Return to normal mode in terminal
tnoremap <Esc> <C-\><C-n>

tnoremap <expr> <A-r> '<C-\><C-n>"'.nr2char(getchar()).'pi'
nnoremap <F3> :botright new \| terminal<CR> \|i
nnoremap <F4> :botright new \| terminal<CR> \|ihtop<CR>

"Navigate tags (Class names, methods etc)
nnoremap <C-b> <C-]>

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <esc> :noh<return><esc>

let g:session_autosave = 'yes'

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('w0rp/ale')
call minpac#add('junegunn/fzf')
call minpac#add('kaicataldo/material.vim')
call minpac#add('tmm1/ripper-tags')
call minpac#add('vim-airline/vim-airline')
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rbenv')
call minpac#add('tpope/vim-surround')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('kana/vim-textobj-user')
call minpac#add('xolox/vim-session')
call minpac#add('xolox/vim-misc')

runtime macros/matchit.vim
if has("autocmd")
  filetype indent plugin on
endif

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
