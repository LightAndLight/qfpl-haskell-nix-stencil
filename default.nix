{ nixpkgs ? import <nixpkgs> {}, compiler ? "default", doBenchmark ? false }:

let

  inherit (nixpkgs) pkgs;

  f = import ./qfpl-haskell-nix-stencil.nix;

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  stencil = haskellPackages.callPackage ./nix/stencil.nix {};

  drv = variant (haskellPackages.callPackage f { inherit stencil; });

in

  drv
