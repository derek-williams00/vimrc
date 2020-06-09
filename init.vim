
" Import from vim
"
"" set runtimepath^=~/.vim runtimepath+=~/.vim/after
"" let &packpath = &runtimepath
"" source ~/.vimrc




call plug#begin('~/local/share/nvim/plugged')
Plug 'scrooloose/nerdTree'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
call plug#end()

set number

syntax on

set mouse=a

color slate

filetype on
filetype plugin on
filetype indent off

set showmatch
set showmode

set clipboard=unnamed


set foldmethod=syntax
set nofoldenable

set tabstop=4 shiftwidth=4
autocmd Filetype html setlocal tabstop=2 shiftwidth=4

set listchars=tab:>.,trail:~,extends:>,precedes:<,eol:¬
set list


" Consider using \ for special hot-keys


inoremap jk x<BS><ESC>
inoremap <C-W> <Esc><C-W>

inoremap <C-J> <Esc><C-W>j
inoremap <C-K> <Esc><C-W>k
inoremap <C-L> <Esc><C-W>l
inoremap <C-H> <Esc><C-W>h

"" I can see whitespace
inoremap <CR> x<BS><CR>x<BS>
inoremap <ESC> x<BS><ESC>




set number relativenumber

set hlsearch

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


"" set cul
"" autocmd InsertEnter * set nocul
"" autocmd InsertLeave * set cul


nnoremap \n :bnext<CR>
nnoremap \p :bprevious<CR>

nnoremap \m ddGp$i<CR><TAB><CR><ESC>xk
nnoremap \c 0iclass<SPACE><ESC>A<SPACE>{<CR>public:<CR><TAB><CR><BS>private:<CR><TAB><CR><BS>};<ESC>3k
nnoremap \h 0i#ifndef<SPACE><ESC>yyp0ldiwidefine<ESC>o<CR><CR><CR>#endif<ESC>2k
nnoremap \f A<SPACE>{<CR><TAB><CR><BS>}<ESC>k

nnoremap \t :term<CR>A

nmap \gd <Plug>(coc-definition)
nmap \gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap <Up> :vertical resize +5 <CR>
nnoremap <Down> :vertical resize -5 <CR>
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l

inoremap <Up> <ESC>
inoremap <Down> <ESC>
inoremap <Left> <ESC>
inoremap <Right> <ESC>

"" nnoremap j <NOP>
"" nnoremap k <NOP>
"" nnoremap l <NOP>
"" nnoremap h <NOP>

"" set complete+=b
"" set complete+=k
"" set complete+=t
"" let b:vcm_tab_complete = 'omni'

tnoremap <ESC> <C-\><C-n>

" PLUGIN NERDTree
nnoremap <C-N> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1





