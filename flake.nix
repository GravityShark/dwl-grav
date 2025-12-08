{
  description = "My own dwl fork";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
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
          dwl-grav = pkgs.callPackage ./dwl.nix { };
        in
        {
          dwl-grav = dwl-grav;
          default = dwl-grav;
        };
    };

}
