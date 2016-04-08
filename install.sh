#!/bin/bash

# Install Vundle for VIM plugin management
mkdir -p ${HOME}/.vim/bundle/
rm -rf ${HOME}/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim

# Update .vimrc
cp vim/.vimrc ${HOME}/.vimrc

# Install VIM plugins
vim +BundleInstall! +qa

# Add .syntastic_c_config template
cp vim/syntastic/.syntastic_c_config.template ${HOME}/.syntastic_c_config.template

# Add .syntastic_cpp_config template
cp vim/syntastic/.syntastic_cpp_config.template ${HOME}/.syntastic_cpp_config.template

# Update .editorconfig
cp editorconfig/.editorconfig ${HOME}/.editorconfig

# Update .gitconfig
cp git/.gitconfig ${HOME}/.gitconfig

# Update .gitignore
cp git/.gitignore ${HOME}/.gitignore
