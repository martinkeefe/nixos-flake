{ pkgs }: {
  # https://github.com/nix-community/home-manager/blob/master/modules/programs/vscode.nix
  enable = true;
  enableUpdateCheck = false;
  enableExtensionUpdateCheck = false;

  userSettings = {
    "[nix]"."editor.tabSize" = 2;
  };

  extensions = [
    pkgs.vscode-extensions.jnoortheen.nix-ide
  ];
}
