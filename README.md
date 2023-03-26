# 🍎 Debian-package-base

![image](http://wallpapercave.com/wp/xk9cJfn.jpg)

## 📝 Description

This is a base for creating Debian packages. It is based on [dbn-tools](https://github.com/jd-apprentice/dbn-tools).

## ❗❗ Important

Remember to change everything inside the `DEBIAN` folder to your needs.

## 📁 Base structure

```
📦debian-package-base
 ┣ 📂DEBIAN
 ┃ ┣ 📜control
 ┃ ┣ 📜postinst
 ┃ ┗ 📜postrm
 ┣ 📂usr
 ┃ ┗ 📂bin
 ┃ ┃ ┗ 📜main.sh
 ┣ 📂utils
 ┃ ┗ 📜build_package.sh
 ┣ 📜LICENSE
 ┗ 📜README.md
```
