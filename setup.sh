read -p "Set up vim as default editor? (y/n) " c_vim
if [ $c_vim = "y" ]
then
	has_vim=$(command -v vim)
	if [ -z "$has_vim" ]
	then
		sudo apt install vim
		echo "Successfully installed vim ✅"
	fi
	export VISUAL=vim
	export EDITOR=vim
        echo "Set vim as default ✅"
fi

read -p "Setup git globals? (y/n) " c_git
if [ $c_git = "y" ]
then
        git config --global user.name "pasu"
	git config --global user.email "pascal.stockert@live.com"
	git config --global core.editor "vim"
	export GIT_EDITOR=vim
	echo "Set git globals ✅"
fi

read -p "Create symlink for .zshrc? (y/n) " c_symlink
if [ $c_symlink = "y" ]
then
	ln -s ~/.dots/.zshrc ~/.zshrc
	echo "Created symlink ✅"
fi
