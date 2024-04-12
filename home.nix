{ config, pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    # Workaround for https://github.com/nix-community/home-manager/issues/2942
    allowUnfreePredicate = _: true;
  };

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "martin";
    homeDirectory = "/home/martin";

    packages = with pkgs; [
      firefox
      kate
      htop
    ];

    # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    stateVersion = "23.11";
  };

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;

    git = {
      enable = true;
      userName = "Martin Keefe";
      userEmail = "martin.keefe@outlook.com";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    vscode = import ./vscode.nix { inherit pkgs; };
  };
}
