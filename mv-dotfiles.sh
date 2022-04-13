# https://qiita.com/okamos/items/7f5461814e8ed8916870
DOT_DIRECTORY="$HOME/.dotfiles"

#dotfilesフォルダを作る
if [ ! -d $DOT_DIRECTORY ]; then
    mkdir ~/dotfiles
fi

# dotfilesを移す
cd ~/
mv .bash_profile dotfiles
mv .zshrc dotfiles
mv .Brewfile dotfiles

# dotfilesのシンボリックリンクを張る
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.Brewfile ~/.Brewfile

# GithubへのPush
cd ~/dotfiles
git init
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin https://github.com/sahara-ooga/dotfiles.git
git push origin main
