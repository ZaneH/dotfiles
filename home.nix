{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "me";
  home.homeDirectory = "/home/me";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # system
    wine
    nerd-fonts.jetbrains-mono
    emote

    # cli
    neovim
    zoxide
    ripgrep
    tmux
    htop
    atop
    btop
    jq
    tldr
    xclip
    tree
    bat
    docker
    oh-my-zsh

    # gui
    vlc
    element-desktop
    rnote
    calibre
    transmission_4-qt
    vorta
    vscodium
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };
  home.shellAliases = {
    pbcopy = "xclip -selection clipboard";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    lfs.enable = true;
    ignores = [
      "*~"
      "*.swp"
      ".DS_Store"
    ];
    extraConfig = {
      init.defaultBranch = "main";
    };
    includes = [
      {
        path = "~/.gitconfig-personal";
        condition = "gitdir:~/repos/personal/";
      }
      {
        path = "~/.gitconfig-work";
        condition = "gitdir:~/repos/work/";
      }
    ];
  };
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "personal" = {
        hostname = "github.com";
        identityFile = "~/.ssh/id_rsa_personal";
      };
      "work" = {
        hostname = "github.com";
        identityFile = "~/.ssh/id_rsa_work";
      };
    };
  };
  programs.zsh = {
    enable = true;
    initExtra = ''
    source $HOME/.local.zsh
    source $HOME/.alias.zsh
    '';
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.7.0";
          sha256 = "1g3pij5qn2j7v7jjac2a63lxd97mcsgw6xq6k5p7835q9fjiid98";
        };
      }
    ];
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "agnoster";
    };
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
