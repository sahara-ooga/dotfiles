eval "$(anyenv init -)"
export PATH=$PATH:`npm bin -g`

#Homebrew で GNU コマンドをインストールして, macOS の既存の BSD コマンドを入れ替えている
# 接頭辞に'g'が付くのでエイリアスでもとに戻している∑
alias grep=ggrep

PROMPT='%F{cyan}%W %c%f $ '

#rubyenvにパスを通す用
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

#pythonコマンドでbrewのpython3を呼び出す
#pythonやpipで3を呼びたいときは /usr/local/opt/python/libexec/binにリンクがあるので ここへPATHを通せばpythonでpython3が呼べるようにはなります。
#https://rcmdnk.com/blog/2020/03/09/computer-homebrew-python/
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# コマンドがあるかどうかの確認
has() {
  type "$1" > /dev/null 2>&1
}
