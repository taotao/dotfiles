" General Setting
syntax on
set number
set ruler
set background=dark
set autoindent
set smartindent
set mouse=

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
Plug 'vim-scripts/taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'

call plug#end()
" ------------------------------------------

" ------------------------------------------
" NERDTree

" NERDTree at the right side
let g:NERDTreeWinPos = "right"

" NERDTree Ignore file
let g:NERDTreeIgnore = ['\.o']
" ------------------------------------------

" ------------------------------------------
" Taglist
nnoremap <F8> :TlistToggle<CR>
" ------------------------------------------

" ------------------------------------------
" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_rust_checkers = ['rustc']
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
"  rust.vim

let g:rustfmt_autosave = 1
"  -----------------------------------------
