#!/bin/sh

# 选择中国源并且更新系统
sudo pacman-mirrors -c China
sudo pacman -Syu

# 安装 vim
sudo pacman -S vim
sudo ln -s /usr/bin/vim /usr/bin/vi

# 设置 sudo 无需密码
sudo visudo
## Defaults:USER_NAME      !authenticate

# 添加 archlinuxcn 库
sudo vim /etc/pacman.conf
## [archlinuxcn]
## Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
sudo pacman -Sy
sudo pacman -S archlinuxcn-keyring

# 安装 oh-my-zsh
sudo pacman -S oh-my-zsh-git
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
vim ~/.zshrc
## ZSH_THEME="agnoster"
chsh -s /bin/zsh
## 注销

# 安装 Powerline Fonts
yaourt -S powerline-fonts-git 

# 安装编译环境
sudo pacman -S go go-tools git 

# 配置 Git
git config --global user.name "Echowxsy"
git config --global user.email "echowxsy@gmail.com"

# 安装 Rime 输入法
sudo pacman -S ibus-rime
## 设置 > 区域与语言 > 输入源
## 注销
## 切换到 Rime 输入法，使用 Ctrl + ~ 修改配置

# 安装 Firefox 中文包
sudo pacman -S firefox-i18n-zh-cn
# 安装 LibreOffice 中文包
sudo pacman -S libreoffice-fresh-zh-CN 
# 安装 Man 中文包
sudo pacman -S man-pages-zh_cn

# 安装 Chrome
sudo pacman -S google-chrome

# 安装 VSCode
sudo pacman -S visual-studio-code
## 安装插件 vscode-icons;shell-format;Beautify
## 文件 > 首选项 > 文件图标主题：VSCode Icons
## go get -u github.com/mvdan/sh/cmd/shfmt to install








