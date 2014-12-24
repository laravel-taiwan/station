# Station 是什麼?

Station 是一個為了更簡易客製化 [laravel/homestead](https://github.com/laravel/homestead) vagrant 環境的模組化框架。

Station 擴展了 Homesteads Yaml 設定檔，增加了以下功能如：xdebug, zsh, oh-my-zsh, ruby-gem installers 還有更多。

## 安裝

1. 安裝必要組件 (Vagrant & Virtualbox)
* 最新版本的 virtualbox [下載](https://www.virtualbox.org/wiki/Downloads)
* Virtualbox 套件包: 在 virtualbox 下載頁可以找到。
* 最新的 Vagrant: 透過 Virtualbox 來管理虛擬機器。[下載](https://www.vagrantup.com/downloads.html)

2. 增加 Laravel Homestead box 到你的 vagrant 環境中:
* `vagrant box add laravel/homestead`

## 關於 Homestead
[Laravel Homestead](http://laravel.com/docs/4.2/homestead) 頁面裡的介紹：

** Laravel Homestead 是一個官方的、預先打包好的 Vagrant “box”，提供你一個完美環境，不需要你安裝 PHP, HHVM, 或是網站伺服器，甚至任何其他伺服器軟體在你的本機上，不用擔心會搞亂你的作業系統！Vagrant boxes 可以被完全支配。如果有什麼地方怪怪的，你只要銷毀然後重建 box，這只是瞬間的事情。**

## 準備開始

最好開始的方式就是閱讀 [wiki](https://github.com/laravel-taiwan/station/wiki).
