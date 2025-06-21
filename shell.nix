{
  sources ? import ./npins,
  pkgs ? import sources.nixpkgs { },
}:
pkgs.mkShellNoCC {
  strictDeps = true;

  packages = with pkgs; [
    npins
  ];
}
