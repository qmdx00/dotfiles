Some of my config files for macOS M1 ...

## 配置文件

下载配置文件
```bash
git clone https://github.com/qmdx00/dotfiles.git ~/.config/dotfiles
```

### 终端配置 zsh + oh-my-zsh


#### zsh

```bash
brew install zsh
```

#### oh-my-zsh

[oh-my-zsh](https://ohmyz.sh/)

##### 安装 oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### 安装插件
- [git-open](https://github.com/paulirish/git-open)
```bash
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
```

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- [autojump](https://github.com/wting/autojump)
```bash
brew install autojump
```

#### 关联配置文件
```bash
ln -s ~/.config/dotfiles/zshrc ~/.zshrc
```


### 窗口管理 yabai + skhd

#### yabai

参考官方 [wiki](https://github.com/koekeishiya/yabai/wiki)

```bash
brew install yabai
```

#### skhd

##### 安装 skhd

```bash
brew install skhd
```

#### 关联配置文件

```bash
ln -s ~/.config/dotfiles/yabairc ~/.yabairc
ln -s ~/.config/dotfiles/skhdrc ~/.skhdrc
```

#### 服务管理

skhd 和 yabai 不再使用 brew services 管理服务，而是使用自带命令，见 [issue#1619](https://github.com/koekeishiya/yabai/issues/1619#issuecomment-1507686308)

```bash
yabai --install-service
yabai --start-service
yabai --stop-service
yabai --restart-service

skhd --install-service
skhd --start-service
skhd --stop-service
skhd --restart-service
```

#### 快捷键映射

参考配置 [julian-heng](https://github.com/julian-heng/yabai-config)

