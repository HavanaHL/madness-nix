# λ | Madness Nix - NixOS + "Why would anyone use this?"

![NixOS](https://img.shields.io/badge/NixOS-5277C3?logo=nixos&logoColor=white)
![Home Manager](https://img.shields.io/badge/Home%20Manager-blue?logo=nix&logoColor=white)
![Flakes](https://img.shields.io/badge/Flakes-5E81AC?logo=snowflake&logoColor=white)
![Lix](https://img.shields.io/badge/Lix-FF5C8D?logo=nixos&logoColor=white&labelColor=000000)
![Zsh](https://img.shields.io/badge/Shell-Zsh-4EAA25?logo=zsh&logoColor=white)
![BusyBox](https://img.shields.io/badge/BusyBox-555555?logo=linux&logoColor=white)
![Wayfire](https://img.shields.io/badge/Wayfire-FFA500?logo=wayland&logoColor=white)

My **source files** for my current *NixOS* system, with several changes and additions that you probably don't need.

---

## 👁️ | Components

- **Flakes file**: [Flakes](https://github.com/HavanaHL/madness-nix/blob/main/nixos/flake.nix )
- **Home-Manager**: [HM](https://github.com/HavanaHL/madness-nix/blob/main/nixos/home.nix)
- **Window Manager**: [Wayfire](https://wayfire.org/)
- **Lix**: [Lix](https://lix.systems/)
- **Busybox**: [Busybox](https://busybox.net/)

---

## ❄️ | Structure (23/09/25)
```bash
.
├── configuration.nix
├── flake.lock
├── flake.nix
├── gm
│   ├── HW
│   │   └── vp.nix
│   ├── WM
│   │   └── wayf.nix
│   ├── fltp
│   │   └── fltp.nix
│   ├── pkgs
│   │   ├── default.nix
│   │   ├── ffox.nix
│   │   ├── flks.nix
│   │   ├── pkgs.nix
│   │   └── thunar.nix
│   └── scy
│       └── doas.nix
├── hardware-configuration.nix
├── hm
│   ├── git
│   │   └── git.nix
│   ├── pkgs
│   │   ├── fonts
│   │   │   └── fonts.nix
│   │   └── pkgs.nix
│   └── shell
└── home.nix
``` 
