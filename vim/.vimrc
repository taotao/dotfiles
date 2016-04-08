" General Setting
syntax on
set number
set ruler
set background=dark
set autoindent
set smartindent

" ------------------------------------------
" Vendle
set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'aceofall/gtags.vim'
Plugin 'taglist.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" ------------------------------------------

" ------------------------------------------
" NERDTree

" Ctrl + Shift + o to open nerdtree
nnoremap <C-S-o> :NERDTreeToggle<CR>

" NERDTree at the right side
let g:NERDTreeWinPos = "right"
" ------------------------------------------

" ------------------------------------------
" Taglist
nnoremap <F8> :TlistToggle<CR>
" ------------------------------------------

" ------------------------------------------
" cscope
set cscopetag                  " use cscope for tags
set cscopeprg='gtags-cscope'   " use gtags-cscope instead of cscope
" ------------------------------------------

" ------------------------------------------
" gtags
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
" ------------------------------------------

" ------------------------------------------
" syntastic
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1
" ------------------------------------------

" ------------------------------------------
" CtrlP

" Also search hidden directory and hidden files
let g:ctrlp_show_hidden = 1

" Only show files that are not ignored by git
let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.git', 'cd %s && git ls-files -c -o --exclude-standard'],
		\ 2: ['.hg', 'hg --cwd %s locate -I .'],
		\ },
	\ 'fallback': 'find %s -type f'
	\ }

" Ctrl+B to show MostRecentUpdate files
nnoremap <C-b> :CtrlPMRU<CR>
" ------------------------------------------
