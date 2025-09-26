# λ | Madness Nix - NixOS + "Why would anyone use this?"

![NixOS](https://img.shields.io/badge/NixOS-5277C3?logo=nixos&logoColor=white)
![Home Manager](https://img.shields.io/badge/Home%20Manager-blue?logo=homeadvisor&logoColor=white)

![Flakes](https://img.shields.io/badge/Flakes-5E81AC?logo=nixos&logoColor=white)
![Lix](https://img.shields.io/badge/Lix-FF5C8D?logo=nixos&logoColor=white&labelColor=FF5C8D)

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
~ λ tree /etc/nixos
/etc/nixos
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
│   ├── env
│   │   └── dft.nix
│   ├── git
│   │   └── git.nix
│   ├── pkgs
│   │   ├── fonts
│   │   │   └── fonts.nix
│   │   └── pkgs.nix
│   └── shell
│       └── zsh.nix
└── home.nix
``` 
