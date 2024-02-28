{ config, pkgs, ... }:

let
  unstable = import <nixpkgs-unstable> {};
  swayMod = config.wayland.windowManager.sway.config.modifier;
in {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "max";
  home.homeDirectory = "/home/max";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Allow unfree packages
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };


  fonts.fontconfig.enable = true;
    
    # The home.packages option allows you to install Nix packages into your
    # environment.
    home.packages = [
      # # Adds the 'hello' command to your environment. It prints a friendly
      # # "Hello, world!" when run.
      # pkgs.hello

      # # It is sometimes useful to fine-tune packages, for example, by applying
      # # overrides. You can do that directly here, just don't forget the
      # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
      # # fonts?
      (pkgs.nerdfonts.override { fonts = [ "ProggyClean" "Overpass" "JetBrainsMono" ]; })

      # # You can also create simple shell scripts directly inside your
      # # configuration. For example, this adds a command 'my-hello' to your
      # # environment:
      # (pkgs.writeShellScriptBin "my-hello" ''
      #   echo "Hello, ${config.home.username}!"
      # '')
      pkgs.fastfetch
      pkgs.google-chrome
      pkgs.mariadb
      pkgs.neovim
      pkgs.zsh
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

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/max/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  home.pointerCursor = {
    gtk.enable = true;
    #x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 32;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # PROGRAMS
  # git 
  programs.git = {
    enable = true;
    userName = "Max Attwell";
    userEmail = "max.attwell@hotmail.com";
  };

  # kitty
  programs.kitty = {
    enable = true;
    font = {
      name = "ProggyCleanSZ Nerd Font Mono";
      size = 18;
    };
    extraConfig = "confirm_os_window_close 0";
  };

  # emacs
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

  # WINDOW MANAGERS
  # Hyprland
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {

      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$emacs" = "emacs";
      "$browser" = "google-chrome-stable";
      "$suspend" = "systemctl suspend";
      "$logout" = "loginctl terminate-user $USER";

      bind = [
          "$mainMod, RETURN, exec, $terminal"
          "$mainMod, E, exec, $emacs"
          "$mainMod SHIFT, RETURN, exec, $browser"
          "$mainMod, Q, killactive"
          "$mainMod, ESCAPE, exec, $suspend"
          "$mainMod SHIFT, ESCAPE, exec, $logout"

          "$mainMod, H, movefocus, l"
          "$mainMod, L, movefocus, r"
          "$mainMod, K, movefocus, u"
          "$mainMod, J, movefocus, d"

          "$mainModSHIFT, H, movewindow, l"
          "$mainModSHIFT, L, movewindow, r"
          "$mainModSHIFT, K, movewindow, u"
          "$mainModSHIFT, J, movewindow, d"

          "$mainMod, 1, workspace, 1"
          "$mainMod, 2, workspace, 2"
          "$mainMod, 3, workspace, 3"
          "$mainMod, 4, workspace, 4"
          "$mainMod, 5, workspace, 5"
          "$mainMod, 6, workspace, 6"
          "$mainMod, 7, workspace, 7"
          "$mainMod, 8, workspace, 8"
          "$mainMod, 9, workspace, 9"
          "$mainMod, 0, workspace, 10"

          "$mainMod SHIFT, 1, movetoworkspace, 1"
          "$mainMod SHIFT, 2, movetoworkspace, 2"
          "$mainMod SHIFT, 3, movetoworkspace, 3"
          "$mainMod SHIFT, 4, movetoworkspace, 4"
          "$mainMod SHIFT, 5, movetoworkspace, 5"
          "$mainMod SHIFT, 6, movetoworkspace, 6"
          "$mainMod SHIFT, 7, movetoworkspace, 7"
          "$mainMod SHIFT, 8, movetoworkspace, 8"
          "$mainMod SHIFT, 9, movetoworkspace, 9"
          "$mainMod SHIFT, 0, movetoworkspace, 10"
      ];

      bindm = [
	"$mainMod, mouse:272, movewindow"
	"$mainMod, mouse:273, resizewindow"
      ];

      monitor = [
	"DP-1, 1920x1080, 0x0, 1"
	"DP-2, 1920x1080, 1920x-475, 1, transform,1"
      ];
    };
  };

  # sway
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      terminal = "kitty";
      output = {
        DP-1 = {
          pos = "0 475";
        };
        DP-2 = {
          transform = "270";
          pos = "1920 0";
        };
      };
    };
      extraConfig = ''
        bindsym ${swayMod}+q kill
        bindsym ${swayMod}+Shift+Return exec google-chrome-stable
        bindsym ${swayMod}+t exec emacs
        default_border pixel 3
        default_floating_border pixel 3
        for_window [class="^.*"] border pixel 1
      '';
  };
}
