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
          dwl-grav = pkgs.dwl.overrideAttrs (old: {
            version = "0.8-dev";
            src = self;
            buildInputs = with pkgs; [
              libinput
              libxcb
              libxkbcommon
              pixman
              wayland
              wayland-protocols
              wlroots_0_19
            ];
          });
        in
        {
          dwl-grav = dwl-grav;
          default = dwl-grav;
        };
    };

}
