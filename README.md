<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center"></h1>
</p>
<p align="center">
    <em>Seamless system theme switcher. Enhance, adapt, enjoy.</em>
</p>
<p align="center">
	<!-- Shields.io badges not used with skill icons. --><p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	<a href="https://skillicons.dev">
		<img src="https://skillicons.dev/icons?i=css,md">
	</a></p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [ Overview](#-overview)
- [ Features](#-features)
- [ Repository Structure](#-repository-structure)
- [ Modules](#-modules)
- [ Getting Started](#-getting-started)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
  - [ Tests](#-tests)
- [ Project Roadmap](#-project-roadmap)
- [ Contributing](#-contributing)
- [ License](#-license)
- [ Acknowledgments](#-acknowledgments)
</details>
<hr>

##  Overview

This project showcases a tech savvys customized Linux setup with GeorgeFM radio automation, Emacs editor configuration, i3 and Sway window managers, and Waybar UI integration. The software encompasses a seamless music experience (GeorgeFM), an adaptable Emacs setup for code editing, and user-friendly window management with custom themes and configurations in i3/Sway and Waybar. Overall, the project prioritizes enhancing productivity and enjoyment within a Linux environment through automation, effective configuration, and customization of essential tools.

---

##  Features

|    |   Feature         | Description |
|----|-------------------|---------------------------------------------------------------|
| ⚙️  | **Architecture**  | A mix of shell, el (Emacs Lisp), and configuration files for various systems and software including Emacs, i3, Sway, Waybar, Home Manager, VLC media player, and Doom Emacs. The projects focus is on customizing the user experience of these tools and integrating them with each other.|
| 📄 | **Documentation** | Moderate to extensive documentation in the form of comments within configuration files and external README.md or .md files providing context, usage instructions, and customization options.|
| ⬆️/🔻 | **Modifiability** | Highly modifiable due to the use of configuration files allowing for fine-grained control over the tools and their integrations.|
| 🎯 | **Target Audience** | Intermediate to advanced users with a good understanding of Linux, shell scripting, Emacs Lisp, i3/Sway window managers, Home Manager, and wayland compositors who aim to personalize their setup and maximize productivity.|
| ✨ | **Innovative Features** | Seamless integration between different tools (Emacs, Waybar, i3, Sway), customized appearance through CSS styling, and the ability to tailor configurations for various use cases.|

---

##  Repository Structure

```sh
└── /
    ├── backgrounds
    │   ├── keys-d.png
    │   └── keys-l.png
    ├── bin
    │   ├── play-georgefm.sh
    │   └── set-theme.sh
    ├── doom
    │   ├── config.el
    │   ├── custom.el
    │   ├── init.el
    │   ├── packages.el
    │   └── splash
    ├── emacs
    │   ├── custom-vars.el
    │   ├── evil.el
    │   ├── general.el
    │   ├── init.el
    │   ├── langs.el
    │   ├── magit.el
    │   └── theme.el
    ├── home-manager
    │   └── home.nix
    ├── i3
    │   └── config
    ├── sway
    │   ├── config
    │   └── current-bg.png
    └── waybar
        ├── config
        ├── dark.css
        ├── light.css
        └── style.css
```

---

##  Modules

<details closed><summary>bin</summary>

| File                                     | Summary                                                                                                                                                                                             |
| ---                                      | ---                                                                                                                                                                                                 |
| [play-georgefm.sh](bin/play-georgefm.sh) | The bin/play-georgefm.sh script checks if VLC is running and starts or stops the radio stream accordingly, ensuring seamless music enjoyment within your system architecture.                       |
| [set-theme.sh](bin/set-theme.sh)         | Swiftly switches between light and dark modes by updating Waybars stylesheet and Sways background image. Effectively enhances the user experience by ensuring consistent theming across the system. |

</details>

<details closed><summary>doom</summary>

| File                            | Summary                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ---                             | ---                                                                                                                                                                                                                                                                                                                                                                                                                       |
| [config.el](doom/config.el)     | Set org-modes custom face, configure Org level heads heights, and add custom faces for outlines and default in Org mode buffers. Also, adjust level faces' height values and set vterm shell to zsh. Adjust Ciradian theme with specific latitude and longitude for calendar display. Make sure org-directory is correct before loading Org.                                                                              |
| [custom.el](doom/custom.el)     | The doom/custom.el file in this Emacs setup modifies variables and faces related to themes, color schemes, fonts, and custom packages.                                                                                                                                                                                                                                                                                    |
| [init.el](doom/init.el)         | Csharp for Unity development, Dhall for config data formats, Elixir for Erlang done right, and more. Embrace Go, GraphQL, Haskell, Julia, Kotlin, Nim, and others. For documentation, utilize Markdown and LaTeX. Engage with frameworks like Qt and Rails. Lastly, manage emails effectively with Mu4e, Notmuch, or Wanderlust.                                                                                          |
| [packages.el](doom/packages.el) | Manage Emacs package installations within the Doom framework by editing this configuration file, doom/packages.el. Here, you declare and configure packages to be synced using doom sync or M-x doom/reload. Different installation methods are supported, including git repositories, MELPA, ELPA, and Emacsmirror. Package disabling, recipe overriding, and branch or commit specification are also available options. |

</details>

<details closed><summary>emacs</summary>

| File                                   | Summary                                                                                                                                                                                                                                                                                                                                 |
| ---                                    | ---                                                                                                                                                                                                                                                                                                                                     |
| [custom-vars.el](emacs/custom-vars.el) | This file, located in the emacs/custom-vars.el path, defines custom variables for configuring packages and themes within Emacs. It ensures seamless integration and customization of various packages and themes for the editor.                                                                                                        |
| [evil.el](emacs/evil.el)               | This file, located in the emacs directory, sets up Evil mode with customized settings for undo system, split windows, keybindings, and Esc sequence. The Evil package enhances Emacs vi-style editing experience.                                                                                                                       |
| [general.el](emacs/general.el)         | The general.el file in this architecture customizes Emacs shortcut keys. It sets the leader key to SPC and defines various mappings for Git, buffers, windows, find, and more to enhance user productivity.                                                                                                                             |
| [init.el](emacs/init.el)               | Disables menu bar, toolbar, and scroll bars; sets relative line numbers; loads custom vars file and custom themes; manages buffer backups and minibuffer history; reverts buffers on changes; enables package manager Use-Package; and loads various modules.                                                                           |
| [langs.el](emacs/langs.el)             | Enhance your Emacs editor experience by enabling various language modes and packages within the `emacs/langs.el` file. It introduces support for Tree-sitter, Language-Servers Protocol (LSP), and specific mode configurations for graphQL, markdown, nix, dockerfile, TypeScript, JavaScript, and JSON files, among others.           |
| [magit.el](emacs/magit.el)             | Configure Magit withSeq and bind M-w key in magit-mode-map to disable it.                                                                                                                                                                                                                                                               |
| [theme.el](emacs/theme.el)             | This file, located in the `emacs/theme.el` path, configures Emacs theme settings including font selection, line number display, and usage of variable width and fixed width font faces for specific modes. It also includes integration with doom-themes, circadian, doom-modeline, and nerd-icons packages for enhanced functionality. |

</details>

<details closed><summary>home-manager</summary>

| File                              | Summary                                                                                                                                                                                                                                                                                              |
| ---                               | ---                                                                                                                                                                                                                                                                                                  |
| [home.nix](home-manager/home.nix) | Configure Home Manager for your preferred applications, environment variables, and pointers with precision. Set up Git, Kitty, Emacs, Hyprland, and sway window managers, while managing session variables and customizing pointer cursors. Maximize productivity by personalizing your NixOS setup. |

</details>

<details closed><summary>i3</summary>

| File                | Summary                                                                                                                                                                                                                     |
| ---                 | ---                                                                                                                                                                                                                         |
| [config](i3/config) | Manage and customize i3 window managers configuration with this file, defining keys, bindings for actions, moving around workspaces, resizing containers, and managing layouts. Adjust borders and monitor layout settings. |

</details>

<details closed><summary>sway</summary>

| File                  | Summary                                                                                                                                                                                                                                                    |
| ---                   | ---                                                                                                                                                                                                                                                        |
| [config](sway/config) | Change keys for applications, navigate workspaces, move focus, split containers, resize layouts, and interact with scratchpad. Customize the status bar with gammastep and waybar. Enable mouse warping and additional requirements like swaync and slurp. |

</details>

<details closed><summary>waybar</summary>

| File                          | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ---                           | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| [config](waybar/config)       | Create an engaging Waybar configuration that displays battery level, network connection status, CPU usage, memory usage, temperature, and media player controls using custom icons. Adjust format strings to suit your preferences.                                                                                                                                                                                                                                                                               |
| [dark.css](waybar/dark.css)   | Set background color for #mode, add padding to #clock et al., modify battery styles. Animate critical battery with blink animation using steps(). Adjust labels on focus and customize widgets' colors. Alter network icon effects, transform idle_inhibitor, customize mpd appearance. Lastly, revamp language, keyboard-state, and privacy designs.                                                                                                                                                             |
| [light.css](waybar/light.css) | Background-color varies from #282828 to #eb4d4b; animation blink for battery.critical. Label focus gains darker background. CPU, memory, disk, backlight, network, pulseaudio, wireplumber, custom-media, temperature, tray, and idle_inhibitor have distinct colors. Network disconnected is marked with #f53c3c. Pulseaudio and wireplumber's inactive state shows a dimmed icon-effect. Privacy items differ with colorful backgrounds: screenshare in #cf5700, audio-in in #1ca000, and audio-out in #0069d4. |
| [style.css](waybar/style.css) | Customize GNOME desktop modules appearance by editing CSS. Adjust colors, sizes, animations, and states for clocks, batteries, CPU usage, memory, disk space, temperature, tray icons, and more. Impact your workspace immediately with visual changes.                                                                                                                                                                                                                                                           |

</details>

