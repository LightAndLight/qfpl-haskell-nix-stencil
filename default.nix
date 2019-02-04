{ nixpkgs ? import <nixpkgs> {}
, compiler ? "default"
}:

let

  inherit (nixpkgs) pkgs;

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  modifiedHaskellPackages = haskellPackages.override {
    overrides = self: super: {
      stencil = self.callPackage ./nix/stencil.nix {};
    };
  };

in

  modifiedHaskellPackages.callPackage ./qfpl-haskell-nix-stencil.nix {}
