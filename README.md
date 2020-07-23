# MySlides

---

# just do this...

```
wget https://raw.githubusercontent.com/BIwashi/MySlides/master/setup.sh
sudo ./setup.sh
```
and type your new repository url and name

---


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


