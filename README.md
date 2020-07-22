# MySlides

my reveal-ck test

[github pages](https://biwashi.github.io/MySlides)


## make new slides from `slides.md`

```
./make.sh
```

## up server

```
./server.sh
```

## commit change for gh-pages

```
./gh-pages
```

## change theme

Change yml file

```
theme: "night" #テーマ設定
transition: "page" #スライドの挙動設定
title: "My Presentation!" #スライドのタイトル。<title>に設定されます。
revealjs_config: #以下、reveal.js用の個別設定（厳密には上の、themeもtransitionもreveal.jsの設定です）
  autoSlide: 5000
  loop: true
```
---
# Usage

MySlideリポジトリから， `--mirror`オプション付きでcloneする．

```bash
git clone --mirror https://github.com/BIwashi/MySlides.git
```

これで， `MySlides.git`という.git拡張子で所得される．

これがリポジトリのバックアップ．ブランチ情報やcommit履歴も含む．

cd でこのリポジトリに入って，あらかじめ作っておいたリポジトリに `--mirror`オプションをつけてpushする．

```bash
$ cd MySlide.git
$ ls
HEAD  branches  config  description  hooks  info  objects  packed-refs  refs
$ git push --mirror https://github.com/(UserName)/(newRepository).git
```

これで新しいrepositoryに移行が完了する．

すでに作成しておいたリポジトリを見ると，mirrorされているのがわかる．

もう.git入らないので削除する．

```bash
$ sudo rm -rf MySlides.git
```

せっかくなので，今いるディレクトリにスライドを作成する．

```bash
$ git clone https://github.com/(UserName)/(newRepository).git
```

これでmasterがcloneされる．

ローカルにもgh-pagesのブランチを置いておくため，一回switchしておく．

```bash
$ git switch gh-pages
$ git branch 
* gh-pages
  master
$ git switch master
$ git branch
  gh-pages
* master
```

あとは，Markdownいじくって `./make.sh`で行けるっしょ，ではない．

gh-pagesブランチのcloneを作る作業がもう一度必要．

```bash
$ ls # masterのホームであることを確認（.gitignoreに/slidesを記述しているので，slidesディレクトリはないはず）
README.md  config.yml  gh-pages.sh  make.sh  master.sh  server.sh  slides.md
$ git clone https://github.com/(UserName)/(newRepository).git --branch gh-pages --single-branch ./slides
~~~~~
~~~~~
# これで，./slidesディレクトリが作られるはず
```

環境完成．これであとはMarkdowon編集からの

```bash
./make.sh # slide作成
./server.sh # ローカルサーバー立ち上げて確認
./gh-pages.sh # slideをgh-pagesに反映
./master.sh # masterのmdをpushする　mdの履歴を残す用
```

---

# まとめ

一連の流れをshellで書いてみる.

```bash

# 環境構築---------------------------------------------------------------

$ git clone --mirror https://github.com/BIwashi/MySlides.git  # --mirrorオプション付きで大本からclone
$ cd MySlide.git
$ git push --mirror https://github.com/(UserName)/(newRepository).git  # ここでnewリポジトリに移行

$ sudo rm -rf MySlides.git  # バックアップいらないから削除

$ git clone https://github.com/(UserName)/(newRepository).git  # 新しく作ったリポジトリにからclone

$ git switch gh-pages  # ローカルにgh-pagesブランチを作っておく（この操作いらないかも？）
$ git switch master
$ git branch  # masterに戻しておく
  gh-pages
* master

# gh-pagesブランチの./slides以下だけcloneして./slidesディレクトリを作っていれる
$ git clone https://github.com/(UserName)/(newRepository).git --branch gh-pages --single-branch ./slides  

# 運用---------------------------------------------------------------

./make.sh # slide作成
./server.sh # ローカルサーバー立ち上げて確認
./gh-pages.sh # slideをgh-pagesに反映
./master.sh # masterのmdをpushする　mdの履歴を残す用

```
