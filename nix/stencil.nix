{ mkDerivation, base, containers, directory, fetchgit, free, mtl
, optparse-applicative, parsers, stdenv, template-haskell, text
, th-lift-instances, trifecta, turtle
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "176brl1qv13fldcvy9gnv670gp05kyw0zz6qpc10n7azvib52lbv";
    rev = "60cfc1bad3dc691e8b8ffa60bac482cc9f68e1e6";
  };
  libraryHaskellDepends = [
    base containers directory free mtl optparse-applicative parsers
    template-haskell text th-lift-instances trifecta turtle
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
