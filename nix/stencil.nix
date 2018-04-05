{ mkDerivation, base, containers, directory, fetchgit, free, mtl
, optparse-applicative, parsers, stdenv, template-haskell, text
, th-lift-instances, trifecta, turtle
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "06ha9slvga11n9v4wxisxhswqg7ihbajspgn7ny3r4ri0q249law";
    rev = "fc8772d5e786fe495f5bf4213481c4e7e2300987";
  };
  libraryHaskellDepends = [
    base containers directory free mtl optparse-applicative parsers
    template-haskell text th-lift-instances trifecta turtle
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
