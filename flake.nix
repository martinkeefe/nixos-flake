{
  outputs = { self, nixpkgs }: {
    nixosConfigurations.bardot = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
