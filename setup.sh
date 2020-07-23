#!/bin/sh

# 環境構築---------------------------------------------------------------

git clone --mirror https://github.com/BIwashi/MySlides.git  # --mirrorオプション付きで大本からclone
cd MySlide.git

]# read new Repository
echo "please type yout new Repository URL"
echo "ex.) https://github.com/(UserName)/(newRepository).git"
echo -n INPUT_NEWREP: 
read newRepository

git push --mirror $newRepository  # ここでnewリポジトリに移行

sudo rm -rf MySlides.git  # バックアップいらないから削除



git clone $newRepository  # 新しく作ったリポジトリにからclone

git switch gh-pages  # ローカルにgh-pagesブランチを作っておく（この操作いらないかも？）
git switch master
git branch  # masterに戻しておく

# gh-pagesブランチの./slides以下だけcloneして./slidesディレクトリを作っていれる
git clone $newRepository --branch gh-pages --single-branch ./slides  

# 運用---------------------------------------------------------------

# ./make.sh # slide作成
# ./server.sh # ローカルサーバー立ち上げて確認
# ./gh-pages.sh # slideをgh-pagesに反映
# ./master.sh # masterのmdをpushする　mdの履歴を残す用

