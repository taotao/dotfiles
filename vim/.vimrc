" General Setting
syntax on
set number
set ruler
set background=dark
set autoindent
set smartindent

if has("macunix")
  set backspace=indent,eol,start " for MAC del key
endif

" ------------------------------------------
" vim-plug

" automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'aceofall/gtags.vim'
Plug 'taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plugin 'neilagabriel/vim-geeknote'

call plug#end()
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
let g:syntastic_python_checkers = ['flake8']
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
" ------------------------------------------

" ------------------------------------------
" vim-geeknote

let g:GeeknoteFormat="markdown"
" ------------------------------------------
