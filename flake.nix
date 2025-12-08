{
  description = "My own dwl fork";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.${system} =
        let
          # dwl-grav = pkgs.callPackage ./dwl.nix { };
          dwl-grav = pkgs.dwl.overrideAttrs (old: {
            src = ./.;
            version = "0.8-dev";
          });
        in
        {
          dwl-grav = dwl-grav;
          default = dwl-grav;
        };
    };

}
