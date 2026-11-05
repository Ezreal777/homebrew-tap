# homebrew-tap

[Homebrew](https://brew.sh) 安装源（tap），用于安装 **[PieDrop](https://github.com/Ezreal777/PieDrop)** —— 一键把 Finder 选中的文件投递进正在运行的 AI CLI 会话（Claude Code / Codex / Gemini CLI …）的 macOS 菜单栏工具。

> Homebrew 的 tap 必须是独立仓库（仓库名以 `homebrew-` 开头），因此本仓库与 PieDrop 主仓分离，仅存放安装定义（cask）。

## 安装

```bash
brew install --cask ezreal777/tap/pie-drop
```

## 升级 / 卸载

```bash
brew upgrade --cask pie-drop      # 升级到最新版
brew uninstall --cask pie-drop    # 卸载应用
brew untap ezreal777/tap          # 移除本安装源（不影响已装好的 App）
```

## 维护说明

`Casks/pie-drop.rb` 指向 PieDrop 主仓 Releases 中的 dmg。主仓每次打 tag 发版时，需同步更新本仓库 cask 中的 `version` 与 `sha256`：

```bash
shasum -a 256 PieDrop_<版本>.dmg   # 取新包哈希
# 修改 Casks/pie-drop.rb 中的 version 与 sha256 后提交推送
```
