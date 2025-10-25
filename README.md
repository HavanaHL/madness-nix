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
/etc/nixos
├── config.nix
├── flake.lock
├── flake.nix
├── gm
│   ├── fltp
│   │   └── fltp.nix
│   ├── HW
│   │   ├── hc.nix
│   │   ├── pipewire.nix
│   │   ├── swap.nix
│   │   └── vp.nix
│   ├── pkgs
│   │   ├── default.nix
│   │   ├── ffox.nix
│   │   ├── flks.nix
│   │   ├── pkgs.nix
│   │   └── thunar.nix
│   ├── powerpills
│   │   ├── cpu.nix
│   │   ├── overlays
│   │   │   ├── default.nix
│   │   │   └── mesa.nix
│   │   └── preload.nix
│   ├── scy
│   │   └── doas.nix
│   └── WM
│       └── wayf.nix
├── hm
│   ├── env
│   │   ├── dft.nix
│   │   └── var.nix
│   ├── look
│   │   └── gui.nix
│   ├── overlays
│   │   ├── default.nix
│   │   └── zellij-0.nix
│   ├── pkgs
│   │   ├── fonts
│   │   │   └── fonts.nix
│   │   └── pkgs.nix
│   └── shell
│       └── zsh.nix
└── home.nix
``` 

<details>
  <summary>gm/</summary>

  **Global Modules**
  ```~ λ tree /etc/nixos/gm
/etc/nixos/gm
├── fltp
│   └── fltp.nix
├── HW
│   ├── hc.nix
│   ├── pipewire.nix
│   ├── swap.nix
│   └── vp.nix
├── pkgs
│   ├── default.nix
│   ├── ffox.nix
│   ├── flks.nix
│   ├── pkgs.nix
│   └── thunar.nix
├── powerpills
│   ├── cpu.nix
│   ├── overlays
│   │   ├── default.nix
│   │   └── mesa.nix
│   └── preload.nix
├── scy
│   └── doas.nix
└── WM
    └── wayf.nix

8 directories, 16 files```
</details>
