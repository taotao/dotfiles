#!/bin/bash

# Update .vimrc
cp vim/.vimrc ${HOME}/.vimrc

# Install VIM plugins
vim +PlugUpdate +qa

# Add .syntastic_c_config template
cp vim/syntastic/.syntastic_c_config.template ${HOME}/.syntastic_c_config.template

# Add .syntastic_cpp_config template
cp vim/syntastic/.syntastic_cpp_config.template ${HOME}/.syntastic_cpp_config.template

# Update .editorconfig
cp editorconfig/.editorconfig ${HOME}/.editorconfig

# Update .gitconfig
cp git/.gitconfig ${HOME}/.gitconfig

# Update git user.name & user.email
(IFS="";
  read -p "Enter git [user.name]: " -r git_user_name;
  git config --global user.name $git_user_name)
(read -p "Enter git [user.email]: " git_user_email;
  git config --global user.email $git_user_email)

# Update .gitignore
cp git/.gitignore ${HOME}/.gitignore

# Update .tmux.conf
cp tmux/.tmux.conf ${HOME}/.tmux.conf
