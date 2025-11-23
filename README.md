# λ | Madness Nix - NixOS
*"Why would anyone use this?"*

![NixOS](https://img.shields.io/badge/NixOS-5277C3?logo=nixos&logoColor=white)
![Home Manager](https://img.shields.io/badge/Home%20Manager-blue?logo=homeadvisor&logoColor=white)

![Flakes](https://img.shields.io/badge/Flakes-5E81AC?logo=nixos&logoColor=white)
![Lix](https://img.shields.io/badge/Lix-FF5C8D?logo=nixos&logoColor=white&labelColor=FF5C8D)

My **source files** for my current *NixOS* system, with several changes and additions that you probably don't need.

---

## 👁️ | Components

- **Flake file**: [Flake](https://github.com/HavanaHL/madness-nix/blob/main/nixos/flake.nix )
- **Home-Manager**: [HM](https://github.com/HavanaHL/madness-nix/blob/main/nixos/home.nix)
- **Window Manager**: [Wayfire](https://wayfire.org/)
- **Lix**: [Lix](https://lix.systems/)
- **Compilation Overlays**: [gm/powerpills/overlays](https://github.com/HavanaHL/madness-nix/tree/main/nixos/gm/powerpills/overlays)

---

## ❄️ | Structure (22/11/25)
```bash
/etc/nixos
├── config.nix
├── flake.lock
├── flake.nix
├── gm
│   ├── fltp
│   │   └── fltp.nix
│   ├── hw
│   │   ├── default.nix
│   │   ├── hc.nix
│   │   ├── pipewire.nix
│   │   ├── swap.nix
│   │   └── vp.nix
│   ├── pkgs
│   │   ├── default.nix
│   │   └── extra
│   │       ├── flks.nix
│   │       ├── nix-ld.nix
│   │       └── thunar.nix
│   ├── powerpills
│   │   ├── cpu.nix
│   │   ├── overlays
│   │   │   ├── default.nix
│   │   │   └── mesa.nix
│   │   └── preload.nix
│   ├── scy
│   │   ├── dns.nix
│   │   └── doas.nix
│   └── ui
│       ├── wayf.nix
│       └── xfce.nix
├── hm
│   ├── env
│   │   ├── dft.nix
│   │   └── var.nix
│   ├── look
│   │   └── gui.nix
│   ├── overlays
│   │   ├── default.nix
│   │   └── zellij-0.nix
│   ├── pkgs
│   │   ├── default.nix
│   │   ├── extra
│   │   │   ├── default.nix
│   │   │   ├── helix.nix
│   │   │   └── kanabox_viado.toml
│   │   └── fonts
│   │       └── default.nix
│   └── shell
│       └── zsh.nix
└── home.nix
``` 
