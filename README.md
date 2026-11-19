# AutoHotkey Scripts

一组基于 **AutoHotkey v2** 的 Windows 键盘增强脚本，把常用操作映射到更贴近手指主区（home row）的快捷键上，减少来回移动 `Ctrl` / 方向键。

目前包含两个相互独立、可分别运行的脚本：

| 脚本 | 作用 |
| --- | --- |
| [`alt_clipboard.ahk`](alt_clipboard.ahk) | 用 `Alt` 组合键完成剪切 / 复制 / 粘贴 |
| [`capslock_navigation.ahk`](capslock_navigation.ahk) | 用 `CapsLock` 作为修饰键完成方向导航 |

---

## 安装要求

这些脚本使用 **AutoHotkey v2** 语法（脚本首行 `#Requires AutoHotkey v2.0`），**不兼容 v1.1**，请务必安装 v2 版本。

1. 前往官网下载并安装 AutoHotkey v2：<https://www.autohotkey.com/>
   - 安装时选择 **v2.x** 版本（默认即为 v2）。
2. 验证安装：安装后 `.ahk` 文件默认关联 AutoHotkey，双击即可运行。
3. 运行脚本：
   - 双击对应的 `.ahk` 文件，或
   - 右键 → `Run script`（以 v2 解释器运行）。
   - 脚本运行后会在系统托盘出现一个图标，右键托盘图标可 `Pause`（暂停）、`Reload`（重载）或 `Exit`（退出）。

> **单实例**：`alt_clipboard.ahk` 使用了 `#SingleInstance Force`，重复启动会自动替换掉已运行的实例，无需手动退出旧进程。

---

## 快捷键用法

### 1. `alt_clipboard.ahk` — 剪贴板快捷键

将 `Alt` 组合键映射为等价的 `Ctrl` 剪贴板操作：

| 快捷键 | 功能 | 实际发送 |
| --- | --- | --- |
| `Alt + X` | 剪切 | `Ctrl + X` |
| `Alt + C` | 复制 | `Ctrl + C` |
| `Alt + V` | 粘贴 | `Ctrl + V` |

### 2. `capslock_navigation.ahk` — CapsLock 导航键

将 `CapsLock` 作为修饰键，映射为 Emacs 风格的文本导航：

| 快捷键 | 功能 | 实际发送 |
| --- | --- | --- |
| `CapsLock + P` | 上 | `↑` |
| `CapsLock + N` | 下 | `↓` |
| `CapsLock + B` | 左 | `←` |
| `CapsLock + F` | 右 | `→` |
| `CapsLock + A` | 行首 | `Home` |
| `CapsLock + E` | 行尾 | `End` |

> **管理员权限**：该脚本启动时会自动检查并请求管理员权限（若未以管理员身份运行，会用 `*RunAs` 自动提权重启）。这样快捷键在任务管理器、部分安装程序等以管理员权限运行的窗口里也能生效。首次运行会弹出 UAC 授权提示，点击「是」即可。

---

## 开机自启（可选）

如需开机自动运行，将脚本（或其快捷方式）放入 Windows 启动目录：

1. 按 `Win + R`，输入 `shell:startup` 回车，打开启动文件夹。
2. 把 `.ahk` 文件（或其快捷方式）复制 / 拖入该文件夹。

> 由于 `capslock_navigation.ahk` 需要管理员权限，直接放进启动目录时提权提示可能被拦截。若要开机自启该脚本，建议改用「任务计划程序」创建一个「使用最高权限运行」的任务，或编译为 `.exe` 后设置为以管理员身份启动。

> **开机弹「安全警告」**：若启动时弹出「打开文件 - 安全警告」对话框，是因为从网络位置（如 WSL 的 `\\wsl.localhost\...`）复制过来的 `.lnk` / 脚本文件被 Windows 打上了「网络标记」（MOTW），与脚本内容无关。解决：右键启动目录中的快捷方式 → `属性` → 在 `常规` 选项卡底部勾选 `解除锁定` → `应用`；或在 PowerShell 中执行 `Unblock-File -LiteralPath <文件路径>`。注意重新从网络位置复制文件会再次带上该标记，需重新解除。

---

## 环境

- 操作系统：Windows
- 依赖：AutoHotkey **v2.0+**
