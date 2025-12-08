{
  pkgs ? import <nixpkgs> { },
}:

with pkgs;

mkShell {
  nativeBuildInputs = [
    installShellFiles
    pkg-config
    wayland-scanner
  ];

  buildInputs = [
    libinput
    libxcb
    libxkbcommon
    pixman
    wayland
    wayland-protocols
    wlroots
    libX11
    xcbutilwm
    xwayland
  ];
}
