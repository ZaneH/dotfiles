# Dotfiles

This repository contains my dotfiles, managed with [Nix](https://nixos.org/) and [Home Manager](https://nix-community.github.io/home-manager/).

## Installation

1. Clone the repository to `~/.dotfiles`:
   ```bash
   git clone https://github.com/ZaneH/dotfiles.git ~/.dotfiles
   ```

2. Initialize and activate the configuration:
   ```bash
   home-manager init --switch $HOME/.dotfiles
   ```

### Useful Resources

- **Find Packages**:
  - [MyNixOS](https://mynixos.com/packages): User-friendly search engine for Nix packages and configuration options.
  - [NixOS Packages Search](https://search.nixos.org/packages): Official search for all available packages.
- **[\[YT\] How to use Nix on Ubuntu or any Linux Distro](https://www.youtube.com/watch?v=5Dd7rQPNDT8&t=485s)**: Timestamped video on Nix and Home Manager.
  
## Notes

- Make sure any additional files (e.g., `.local.zsh`, `.alias.zsh`, SSH keys) referenced in the config are set up in your home directory.
- The configuration is pinned to Home Manager's 24.11 release to ensure compatibility.
