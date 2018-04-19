{ mkDerivation, aeson-pretty, base, bytestring, containers
, directory, fetchgit, free, mtl, optparse-applicative, parsers
, process, stdenv, template-haskell, text, th-lift-instances
, trifecta, yaml
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "08a4dczpacz17ay6v3fykbj3jaki6bx7imad8ca4bylh7h7spngq";
    rev = "f96089786042897729be47e329bbbfd12c9f7457";
  };
  libraryHaskellDepends = [
    aeson-pretty base bytestring containers directory free mtl
    optparse-applicative parsers process template-haskell text
    th-lift-instances trifecta yaml
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
