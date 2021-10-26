# Dotfiles

macOS 配置文件，通过 cp 方式管理。

## 安装

### 1. 安装 Homebrew 包

```bash
brew install zsh yabai skhd
brew install autojump
brew install kubectl helm
```

### 2. 安装 oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. 复制配置文件

```bash
cp ~/.config/dotfiles/zshrc ~/.zshrc
cp ~/.config/dotfiles/yabairc ~/.yabairc
cp ~/.config/dotfiles/skhdrc ~/.skhdrc
cp ~/.config/dotfiles/vimrc ~/.vimrc
```

### 4. 启动服务

```bash
yabai --install-service
yabai --start-service

skhd --install-service
skhd --start-service
```

## 组件

### zsh / oh-my-zsh

- 主题：`crunch`
- 插件：`git`, `zsh-autosuggestions`, `zsh-syntax-highlighting`, `autojump`, `macos`

### yabai + skhd

| 快捷键 | 功能 |
|--------|------|
| `alt - h/j/k/l` | 聚焦窗口（上下左右） |
| `shift + alt - h/j/k/l` | 移动窗口 |
| `lctrl + alt - n/d` | 创建/销毁桌面 |
| `lctrl - 1~9` | 切换到桌面 1~9 |
| `lctrl + alt - h/j/k/l` | 调整窗口大小 |
| `alt - r` / `shift + alt - r` | 旋转桌面 |
| `shift + alt - f` | 全屏/退出全屏 |
| `shift + lctrl + alt - r` | 重启 yabai |

详细配置见 `yabairc` 和 `skhdrc`。

### vimrc

来源：[amix/vimrc](https://github.com/amix/vimrc)
