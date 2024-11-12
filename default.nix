let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    git
    python3
    python312Packages.jupyter-core
    python312Packages.summarytools
    python312Packages.numpy
    python312Packages.tensorflow
    rstudio
    rstudioWrapper
    rPackages.DataExplorer
    rPackages.loon_ggplot
    rPackages.neural
  ];
}
