Personalised vim config

Installation:

```bash
cd ~
git clone http://github.com/leepage/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
vim // :Helptags
```

Install a new bundle:

```bash
cd ~/.vim
mkdir ~/.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."
```

Update all bundles

```bash
cd ~/.vim
git submodule foreach git pull origin master
```

To remove a submodule you need to:

1. Delete the relevant section from the .gitmodules file.
2. Delete the relevant section from .git/config.
3. Run git rm --cached path_to_submodule (no trailing slash).
4. Commit and delete the now untracked submodule files.

