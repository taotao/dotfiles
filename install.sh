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

# Update .flake8
cp flake8/.flake8 ${HOME}/.flake8

# Update bash
cp bash/.bash_prompt ${HOME}/.bash_prompt
echo '[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"' >> ${HOME}/.bashrc
echo "PROMPT_COMMAND='echo -ne \"\033]0;\007\"'" >> ${HOME}/.bashrc
