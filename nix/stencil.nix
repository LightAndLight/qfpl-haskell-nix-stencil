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
    sha256 = "16xpk305p88lcyq8b313ppssw9lhsamizlvsb5zyp7m19zmqbamz";
    rev = "508ebb184502cd68b1ca8281d44de90398625c3f";
  };
  libraryHaskellDepends = [
    aeson-pretty base bytestring containers directory free mtl
    optparse-applicative parsers process template-haskell text
    th-lift-instances trifecta yaml
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
