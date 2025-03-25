# <img src="https://raw.githubusercontent.com/hyprwm/Hyprland/main/assets/meta/logo-flat-128.png" alt="HyprEvo" width="40" height="40"/> HyprEvo

<p align="center">
  <img src="https://raw.githubusercontent.com/hyprwm/Hyprland/main/assets/meta/preview.webp" alt="HyprEvo" width="600" />
  <br>
  <em>The next evolution of Hyprland configuration</em>
</p>

A modern, feature-rich configuration for Hyprland window manager with a focus on aesthetics and functionality. This project builds upon and enhances the [hyprlandHyDE](https://github.com/prasanthrangan/hyprdots) project with additional features and optimizations.

## 🚀 About

This configuration represents an improved version of the hyprlandHyDE project, adding enhanced functionality while maintaining the core aesthetic and usability principles. The goal is to provide an even more seamless and customizable Hyprland experience with better integration of components and additional quality-of-life features.

## 💻 Technologies

<p align="center">
  <img src="https://raw.githubusercontent.com/hyprwm/Hyprland/main/assets/meta/logo-flat-128.png" alt="Hyprland" width="40" height="40"/>
  <img src="https://avatars.githubusercontent.com/u/44215127?s=200&v=4" alt="Waybar" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/kovidgoyal/kitty/master/logo/kitty-128.png" alt="Kitty" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/adi1090x/rofi/master/images/logo.png" alt="Rofi" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/KDE/breeze-icons/master/icons/apps/48/org.kde.dolphin.svg" alt="Dolphin" width="40" height="40"/>
  <img src="https://code.visualstudio.com/assets/images/code-stable.png" alt="VS Code" width="40" height="40"/>
  <img src="https://design.firefox.com/product-identity/firefox/firefox/firefox-logo.png" alt="Firefox" width="40" height="40"/>
  <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Archlinux-icon-crystal-64.svg" alt="Arch Linux" width="40" height="40"/>
  <img src="https://upload.wikimedia.org/wikipedia/commons/3/3f/Linux_Mint_logo_without_wordmark.svg" alt="Linux Mint" width="40" height="40"/>
  <img src="https://dunst-project.org/static/dunst.png" alt="Dunst" width="40" height="40"/>
  <img src="https://avatars.githubusercontent.com/u/12054114?s=200&v=4" alt="Tmux" width="40" height="40"/>
</p>


## 🌟 Features

- 🎯 **Window Management**

  - Dynamic window tiling and floating
  - Group management
  - Scratchpad support
  - Window pinning
  - Smooth window transitions

- 🎮 **Workspace Control**

  - 10 dedicated workspaces
  - Quick workspace navigation
  - Empty workspace detection
  - Special workspace (scratchpad)

- 🎨 **Theming & Wallpaper**

  - Dynamic wallpaper switching
  - Theme selection
  - Waybar layout customization
  - Wallbash mode integration

- 🛠️ **Utilities**

  - Screenshot tools
  - Color picker
  - Clipboard management
  - Emoji and glyph pickers
  - System monitoring

- 🎵 **Media Controls**
  - Volume control
  - Media playback
  - Brightness adjustment
  - Keyboard layout switching

## 🔄 Enhancements over hyprlandHyDE

- Improved Waybar with auto-hide functionality
- Enhanced lock screen with random wallpaper selection
- Optimized keybindings for better workflow
- Streamlined configuration structure
- Additional customization options
- Performance improvements

## ⌨️ Keybindings

### Window Management

| Key               | Description                       |
| ----------------- | --------------------------------- |
| `Super + Q`       | Close focused window              |
| `Alt + F4`        | Close focused window              |
| `Super + Delete`  | Exit Hyprland                     |
| `Super + W`       | Toggle floating window            |
| `Super + G`       | Toggle group                      |
| `Shift + F11`     | Toggle fullscreen                 |
| `Super + L`       | Lock screen with random wallpaper |
| `Super + Alt + L` | Lock screen (no random wallpaper) |

### Workspace Navigation

| Key                            | Description                       |
| ------------------------------ | --------------------------------- |
| `Super + [1-0]`                | Switch to workspace 1-10          |
| `Super + Shift + [1-0]`        | Move window to workspace 1-10     |
| `Super + Control + Left/Right` | Switch to previous/next workspace |
| `Super + Control + Down`       | Switch to empty workspace         |
| `Super + S`                    | Toggle scratchpad                 |
| `Super + Shift + S`            | Move window to scratchpad         |

### Application Launchers

| Key           | Description               |
| ------------- | ------------------------- |
| `Super + T`   | Terminal (Kitty)          |
| `Super + E`   | File Explorer (Dolphin)   |
| `Super + C`   | Text Editor (Code)        |
| `Super + F`   | Web Browser (Firefox)     |
| `Super + A`   | Application finder (Rofi) |
| `Super + TAB` | Window switcher (Rofi)    |

### Media Controls

| Key                        | Description         |
| -------------------------- | ------------------- |
| `F10`                      | Toggle mute         |
| `F11`                      | Decrease volume     |
| `F12`                      | Increase volume     |
| `XF86AudioPlay/Pause`      | Play/Pause media    |
| `XF86AudioNext/Prev`       | Next/Previous media |
| `XF86MonBrightnessUp/Down` | Adjust brightness   |

### Screenshot & Capture

| Key                   | Description              |
| --------------------- | ------------------------ |
| `Super + Shift + P`   | Color picker             |
| `Super + P`           | Screenshot area          |
| `Super + Control + P` | Screenshot area (frozen) |
| `Super + Alt + P`     | Screenshot monitor       |
| `Print`               | Screenshot all monitors  |

## 🎨 Theming

### Wallpaper Management

- Random wallpaper selection for lock screen
- Global wallpaper switching
- Wallbash mode integration
- Theme selection system

### Waybar

- Multiple layout options
- Dynamic configuration
- Auto-hide functionality
- Custom styling

## 🛠️ Scripts

### Lock Screen

```bash
random_lock_wallpaper.sh
```

- Randomly selects a wallpaper from system directories
- Supports multiple wallpaper sources
- Automatic cache management
- Desktop notifications

### Other Utilities

- `wallpaper.sh`: Wallpaper management
- `wbarconfgen.sh`: Waybar configuration generator
- `screenshot.sh`: Screenshot utilities
- `volumecontrol.sh`: Audio control
- `brightnesscontrol.sh`: Display brightness

## 📦 Dependencies

- Hyprland
- Waybar
- Kitty
- Rofi
- Dolphin
- VS Code
- Firefox
- Hyprlock
- Wallbash

## 🔧 Installation

1. Clone this repository:

```bash
git clone https://github.com/yourusername/hyprland-config.git
```

2. Copy the configuration files:

```bash
cp -r hyprland-config/* ~/.config/hypr/
```

3. Make scripts executable:

```bash
chmod +x ~/.config/hypr/scripts/*
```

4. Restart Hyprland or your system

> **Note:** If you're coming from the original hyprlandHyDE project, make sure to back up your existing configuration before installing.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

Made with ❤️ for the Linux community
