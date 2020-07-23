#!/bin/sh

# 環境構築---------------------------------------------------------------

# READ_______________________________________________________________

# read new Repository URL
echo " "
echo "========================================================"
echo "please type yout new Repository URL and Name"
echo "ex.) https://github.com/(UserName)/(newRepository).git"
echo "ex.) newRepository"
echo "========================================================"
echo " "
echo -n INPUT_URL : 
read newRepository
echo " "
echo -n INPUT_NAME: 
read newRepositoryName

# END________________________________________________________________


git clone --mirror https://github.com/BIwashi/MySlides.git  # --mirrorオプション付きで大本からclone
cd MySlides.git



git push --mirror $newRepository  # ここでnewリポジトリに移行

cd ..

sudo rm -rf MySlides.git  # バックアップいらないから削除


git clone $newRepository  # 新しく作ったリポジトリにからclone



cd $newRepositoryName

git switch gh-pages  # ローカルにgh-pagesブランチを作っておく（この操作いらないかも？）
git switch master
git branch  # masterに戻しておく

# gh-pagesブランチの./slides以下だけcloneして./slidesディレクトリを作っていれる
git clone $newRepository --branch gh-pages --single-branch ./slides

cd $newRepositoryName

echo " "
echo "_______________Usage_______________"
echo " "
echo " "
echo "【slide作成】"
echo "./make.sh "
echo " "
echo "【ローカルサーバー立ち上げて確認】"
echo "./server.sh"
echo " "
echo "【slideをgh-pagesに反映】"
echo "./gh-pages.sh"
echo " "
echo "【masterのmdをpushする（mdの履歴を残す用）】"
echo "./master.sh"
echo " "
echo "_______________Usage_______________"


