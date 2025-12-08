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
          dwl-grav = import ./dwl.nix {
            inherit pkgs;
            self = self.outPath;
          };
        in
        {
          dwl-grav = dwl-grav;
          default = dwl-grav;
        };
    };

}
