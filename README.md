# Homebrew Tap for MacEverything

[MacEverything](https://github.com/ying-zhang/MacEverything) is a fast filename and content search application for macOS. This tap distributes its Apple Silicon and Intel DMG builds as a Homebrew Cask.

## English

### Install

```bash
brew tap ying-zhang/maceverything
brew install --cask maceverything
```

### Upgrade

```bash
brew update
brew upgrade --cask maceverything
```

### Gatekeeper notice

MacEverything is currently distributed with an ad-hoc signature and is not Apple-notarized. If macOS blocks the first launch:

1. Try to open MacEverything once from the Applications folder.
2. Open **System Settings > Privacy & Security**.
3. Find the message about MacEverything and click **Open Anyway**.
4. Confirm the launch when macOS asks again.

Only approve an app you intentionally installed from this tap.

## 中文

### 安装

```bash
brew tap ying-zhang/maceverything
brew install --cask maceverything
```

### 升级

```bash
brew update
brew upgrade --cask maceverything
```

### Gatekeeper 提示

MacEverything 当前使用 ad-hoc 签名，尚未经过 Apple 公证。如果 macOS 阻止首次启动：

1. 先从“应用程序”文件夹尝试打开一次 MacEverything。
2. 打开 **系统设置 > 隐私与安全性**。
3. 找到关于 MacEverything 的拦截提示，点击 **仍要打开**。
4. macOS 再次询问时确认打开。

请只允许你确认通过本 tap 安装的应用。
