filetype plugin indent on

set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2

let g:loaded_logipat = 1
let g:colorizer_auto_filetype = 'css,scss,html,less'
let mapleader = ' '

" save using inset mode
inoremap :w<CR> <ESC>:w<CR>a
" save and alter tab or close table
imap <Leader>bn <ESC>:w<CR><Leader>bn
imap <Leader>bp <ESC>:w<CR><Leader>bp
imap <Leader>bc <ESC>:w<CR><Leader>bc

" close or open nerdtree in insert mode
imap <Leader>nt <ESC><leader>nt<C-W>l:w<CR>a

" indent code whif visual mode
vmap <TAB> ><CR>gv
vmap <S-TAB> <<CR>gv

" reload document
nmap <F5> :e<CR>

" open nerd tree
nmap nt :NERDTreeToggle<CR>
" find file in nerd tree
nmap nf :NERDTreeFind<CR>

nmap gs :Gstatus<CR>
nmap <C-f> <Plug>CtrlSFPrompt

nmap <Leader>vs<CR> :vs<CR>
nmap <Leader>hs<CR> :sp<CR>

"configuration horizontal resize
nmap <Leader>max<CR> :res<Space>+200<CR>
nmap <Leader>min<CR> :res<Space>-200<CR>
" up
nmap <Leader>k :res<Space>+10<CR>
" down
nmap <Leader>j :res<Space>-10<CR>

" configuration vertical resize
nmap <Leader>vmax<CR> :vertical<Space>resize<Space>-200<CR>
nmap <Leader>vmin<CR> :vertical<Space>resize<Space>+200<CR>
" left
nmap <Leader>h :vertical<Space>resize<Space>-10<CR>
" rigth
nmap <Leader>l :vertical<Space>resize<Space>+10<CR>

" configuration doc php
nmap  <Leader>doc :exec<Space>PhpDoc()<CR>''


" Buffer 
nnoremap <Leader>bp :bprev<CR>
nnoremap <Leader>bn :bnext<CR>
" Buffer deleting
nnoremap <Leader>bc :BD<CR>

vnoremap // y/<C-R>"<CR>


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plug auto-loading
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'dyng/ctrlsf.vim'
Plug 'lilydjwg/colorizer'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'taohex/lightline-buffer'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/PDV--phpDocumentor-for-Vim'
Plug 'jwalton512/vim-blade'

" Plug On-demand loading
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" Initialize plugin system
call plug#end()

" Define colors
set t_Co=256
colorscheme gruvbox
set background=dark

" define commentari for smarty languagi
autocmd FileType smarty setlocal commentstring={*\ %s\ *}


" ligthLine Configuration
set hidden  " allow buffer switching without saving
set showtabline=2  " always show tabline

" use lightline-buffer in lightline
let g:lightline = {
	\ 'tabline': {
		\ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
		\ 'right': [ [ 'close' ], ],
		\ },
	\ 'component_expand': {
		\ 'buffercurrent': 'lightline#buffer#buffercurrent2',
		\ },
	\ 'component_type': {
		\ 'buffercurrent': 'tabsel',
		\ },
	\ 'component_function': {
		\ 'bufferbefore': 'lightline#buffer#bufferbefore',
		\ 'bufferafter': 'lightline#buffer#bufferafter',
		\ 'bufferinfo': 'lightline#buffer#bufferinfo',
		\ },
	\ }




" inplement cab section
cab W w
cab Wq wq
cab WQ wq
