# MySlides

<br >

# Just do this...

If you have ruby and reveal-ck, you just do this script in your repository which you want to make slide in.

```
wget https://raw.githubusercontent.com/BIwashi/MySlides/master/setup.sh
sudo ./setup.sh
```
and type your new repository URL and Name

```
========================================================
please type youｒ new Repository URL and Name
ex.) https://github.com/(UserName)/(newRepository).git
ex.) newRepository
========================================================

INPUT_URL : 

INPUT_NAME:

```

<br >
if you don't have ruby and reveal-ck, please install these.

```
$ sudo apt install ruby
$ sudo apt install ruby-dev
$ sudo gem install reveal-ck

```

<br >
<br >


---

<br >


# Sample slide

[github pages](https://biwashi.github.io/MySlides)



<br >

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
./gh-pages.sh
```

## change theme

### Change yml file

```
theme: "night" #テーマ設定
transition: "page" #スライドの挙動設定
title: "My Presentation!" #スライドのタイトル。<title>に設定されます。
revealjs_config: #以下、reveal.js用の個別設定（厳密には上の、themeもtransitionもreveal.jsの設定です）
  autoSlide: 5000
  loop: true
```


